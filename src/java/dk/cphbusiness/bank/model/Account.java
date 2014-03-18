package dk.cphbusiness.bank.model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author joachim
 */
@Entity
@Table(name = "ACCOUNTS")
@Inheritance(strategy = InheritanceType.JOINED)
@NamedQueries({
    @NamedQuery(name = "Account.findAll", query = "SELECT a FROM Account a")})
public class Account implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "ACCOUNTNUMBER")
    private String accountnumber;
    
    @Column(name = "BALANCE")
    private Integer balance;
    
    @Column(name = "INTEREST")
    private Integer interest;
    
    @JoinColumn(name = "OWNER", referencedColumnName = "CPR")
    @ManyToOne(optional = false)
    private Person person;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "account")
    private Collection<Transfer> transferCollection;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "account1")
    private Collection<Transfer> transferCollection1;

    public Account() {
    }

    public Account(String accountnumber) {
        this.accountnumber = accountnumber;
    }

    public String getAccountnumber() {
        return accountnumber;
    }

    public void setAccountnumber(String accountnumber) {
        this.accountnumber = accountnumber;
    }

    public Integer getBalance() {
        return balance;
    }

    public void setBalance(Integer balance) {
        this.balance = balance;
    }

    public Integer getInterest() {
        return interest;
    }

    public void setInterest(Integer interest) {
        this.interest = interest;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public Collection<Transfer> getTransferCollection() {
        return transferCollection;
    }

    public void setTransferCollection(Collection<Transfer> transferCollection) {
        this.transferCollection = transferCollection;
    }

    public Collection<Transfer> getTransferCollection1() {
        return transferCollection1;
    }

    public void setTransferCollection1(Collection<Transfer> transferCollection1) {
        this.transferCollection1 = transferCollection1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (accountnumber != null ? accountnumber.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Account)) {
            return false;
        }
        Account other = (Account) object;
        if ((this.accountnumber == null && other.accountnumber != null) || (this.accountnumber != null && !this.accountnumber.equals(other.accountnumber))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dk.cphbusiness.bank.model.Account[ accountnumber=" + accountnumber + " ]";
    }
    
}
