using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace WickedBanana.Models
{
    [Table("Foes")]
    public class Foe
    {
        [Key]
        public int FoeId { get; set; }
        public string Name { get; set; }
        public int HitPoints { get; set; }
        public int AttackDamage { get; set; }
        public string Image { get; set; }
        public virtual ICollection<Item> Item { get; set; }
    }
}
