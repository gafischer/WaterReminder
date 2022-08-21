using System;
using System.Globalization;
using System.Windows.Controls;
using System.Windows.Data;

namespace WaterReminder
{
    public class MinutesValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {           
            string strValue = Convert.ToString(value);

            if (string.IsNullOrEmpty(strValue))
            {
                return new ValidationResult(false, $"Value cannot be empty.");
            }

            if (!int.TryParse(strValue, out int minutes))
            {
                return new ValidationResult(false, $"Value must be a number");
            }

            if (minutes <= 0 || minutes > 60)
            {
                return new ValidationResult(false, $"Value must be a number between 1 and 60");
            }

            return new ValidationResult(true, null);
        }
    }
}
