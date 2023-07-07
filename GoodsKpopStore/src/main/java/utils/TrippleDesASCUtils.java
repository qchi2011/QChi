/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Base64;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import javax.management.openmbean.InvalidKeyException;

/**
 *
 * @author Admin
 */
public class TrippleDesASCUtils {
    /* Private variable declaration */
    private static final String SECRET_KEY = "123456789";
    private static final String SALTVALUE = "abcdefg";

    /* Encryption Method */
    public static String encrypt(String strToEncrypt) throws UnsupportedEncodingException, java.security.InvalidKeyException {
        try {
            /* Mã hóa dữ liệu trước khi sử dụng Triple DES */
            String encodedData = URLEncoder.encode(strToEncrypt, StandardCharsets.UTF_8.toString());

            /* Tiếp tục mã hóa như bình thường sử dụng Triple DES */
            byte[] iv = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
            IvParameterSpec ivspec = new IvParameterSpec(iv);
            SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
            KeySpec spec = new PBEKeySpec(SECRET_KEY.toCharArray(), SALTVALUE.getBytes(), 65536, 256);
            SecretKey tmp = factory.generateSecret(spec);
            SecretKeySpec secretKey = new SecretKeySpec(tmp.getEncoded(), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey, ivspec);

            /* Retruns encrypted value */
            return Base64.getEncoder().encodeToString(cipher.doFinal(encodedData.getBytes(StandardCharsets.UTF_8)));
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | InvalidKeySpecException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            System.out.println("Error occured during encryption: " + e.toString());
        } catch (UnsupportedEncodingException e) {
            System.out.println("Error occured during encoding: " + e.toString());
        }
        return null;
    }

    /* Decryption Method */
    public static String decrypt(String strToDecrypt) throws java.security.InvalidKeyException {
        try {
            /* Giải mã dữ liệu trước khi sử dụng Triple DES */
            String decodedData = URLDecoder.decode(strToDecrypt, StandardCharsets.UTF_8.toString());

            /* Tiếp tục giải mã như bình thường sử dụng Triple DES */
            byte[] iv = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
            IvParameterSpec ivspec = new IvParameterSpec(iv);
            SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
            KeySpec spec = new PBEKeySpec(SECRET_KEY.toCharArray(), SALTVALUE.getBytes(), 65536, 256);
            SecretKey tmp = factory.generateSecret(spec);
            SecretKeySpec secretKey = new SecretKeySpec(tmp.getEncoded(), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(Cipher.DECRYPT_MODE, secretKey, ivspec);

            /* Retruns decrypted value */
            return new String(cipher.doFinal(Base64.getDecoder().decode(decodedData)));
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | InvalidKeySpecException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            System.out.println("Error occured during decryption: " + e.toString());
        } catch (UnsupportedEncodingException e) {
            System.out.println("Error occured during decoding: " + e.toString());
        }
        return null;
    }

    /* Driver Code */
    public static void main(String[] args) {
        try {
            Scanner scanner = new Scanner(System.in);
//        /* Message to be encrypted. */
//        String originalval = "AES Encryption";

            /* Call the encrypt() method and store result of encryption. */
            System.out.println("Enter string want to encrypt: ");
            String encryptedval = encrypt(scanner.nextLine());
            System.out.println("Encrypted value: " + encryptedval);

            /* Call the decrypt() method and store result of decryption. */
            System.out.println("Enter string want to decrypt: ");
            String decryptedval = decrypt(scanner.nextLine());
            System.out.println("Decrypted value: " + decryptedval);
        } catch (java.security.InvalidKeyException ex) {
            Logger.getLogger(TrippleDesASCUtils.class.getName()).log(Level.SEVERE, null, ex);
        } catch (UnsupportedEncodingException ex) {
            Logger.getLogger(TrippleDesASCUtils.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
