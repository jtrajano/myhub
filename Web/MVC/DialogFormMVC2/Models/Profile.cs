using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace DialogFormExampleMVC2.Models
{
    public class Profile
    {
        [Required(ErrorMessage="*")]
        public string  Name { get; set; }

        [Required(ErrorMessage = "*")]
        [StringLength(20,ErrorMessage="Too Long")]
        public string  NickName { get; set; }

        [Required(ErrorMessage = "*")]
        [StringLength(50, ErrorMessage = "Too Long")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [Required(ErrorMessage = "*")]
        [Range(1,100,ErrorMessage="*")]
        public int Age { get; set; }


        public Guid Id { get; set; }

    }
}
