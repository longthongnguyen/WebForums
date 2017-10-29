using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebForums.HashSalt
{
 

    public static class Hash
    {
        public static string ByteArrayToHexString(byte[] ba)
        {
            System.Text.StringBuilder hex = new System.Text.StringBuilder(ba.Length * 2);
            foreach (byte b in ba)
            {
                hex.AppendFormat("{0:x2}", b);
            }
            return hex.ToString();
        }
        public static string CreateSalt()
        {
            int size = 24;
            var rng = new System.Security.Cryptography.RNGCryptoServiceProvider();
            var buff = new byte[size];  
            rng.GetBytes(buff);
            return Convert.ToBase64String(buff);
        }
        public static string GenerateSHA256Hash(string input, string salt)
        {
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(input + salt);
            System.Security.Cryptography.SHA256Managed sha266hashstring = new System.Security.Cryptography.SHA256Managed();
            byte[] hash = sha266hashstring.ComputeHash(bytes);
            return ByteArrayToHexString(hash);
        }
    }
    
}