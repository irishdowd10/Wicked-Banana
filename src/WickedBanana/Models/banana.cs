using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace WickedBanana.Models
{
    [Table("Bananas")]
    public class Banana
    {
        [Key]
        public int BananaId { get; set; }
        public string Name { get; set; }
        public int AttackDamage { get; set; }
        public int Length { get; set; }
        public string Image { get; set; }
        public virtual ICollection<Item> Item { get; set; }
        public Banana()
        {
            this.AttackDamage = 100;
            this.Length = 100;
            this.Image = "https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg";
        }
    }
}
