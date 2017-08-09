using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WickedBanana.Models
{
    [Table("BananaItems")]
    public class BananaItem
    {   
        [Key]
        public int BananaId { get; set; }
        [Key]
        public int ItemId { get; set; }
        public Banana Banana { get; set; }
        public Item Item { get; set; }


    }
}
