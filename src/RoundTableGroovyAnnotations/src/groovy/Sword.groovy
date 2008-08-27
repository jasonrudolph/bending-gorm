import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.FetchType
import javax.persistence.Id
import javax.persistence.JoinColumn
import javax.persistence.ManyToOne
import javax.persistence.Table

@Entity
@Table(name="sword_inventory")
public class Sword  implements java.io.Serializable {

    @Id 
    @Column(name="serial_number", nullable=false)
    long serialNumber

    @Column(name="manufacturer", nullable=false)
    String manufacturer

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="assignee")
    Knight knight
}
