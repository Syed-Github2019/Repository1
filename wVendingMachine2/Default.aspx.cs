using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            
        }
        else
        {
            gblStockCoke.Text = "5";
            gblStockPepsi.Text = "5";
            gblStock7up.Text = "5";
            gblStockFanta.Text = "5";
            gblStockRedBull.Text = "5";
            gblStockLays.Text = "5";
            gblStockCheetos.Text = "5";
            gblStockKinley.Text = "5";
            gblStockAquafina.Text = "5";
            gblStockDietPepsi.Text = "5";

            fnSetItem(true);
            fnSetCoins(false);
        } 
    }    

    private void fnInsertCash(double Coin)
    {
        if (txtAmtInsert.Text.Trim() == String.Empty)
            txtAmtInsert.Text = "0";

        if (txtBalAmount.Text.Trim() == String.Empty)
            txtBalAmount.Text = "0";

        txtAmtInsert.Text = Convert.ToString(Convert.ToDouble(txtAmtInsert.Text) + Coin);

        if (Convert.ToDouble(txtAmtInsert.Text) > Convert.ToDouble(lblItemPrice.Text))
        {
            txtBalAmount.Text = Convert.ToString(Convert.ToDouble(txtAmtInsert.Text) - Convert.ToDouble(lblItemPrice.Text));
            gblMessage.Text = "Purchase Complete. Please Collect Item and Balance Amount.";
            fnCompletePurchase();
        }

        if (Convert.ToDouble(txtAmtInsert.Text) == Convert.ToDouble(lblItemPrice.Text))
        {
            gblMessage.Text = "Purchase Complete. Please Collect Item.";
            fnCompletePurchase();

        }

        if (Convert.ToDouble(txtAmtInsert.Text) < Convert.ToDouble(lblItemPrice.Text))
        {
            gblMessage.Text = "Insert " + lblItemPrice.Text + "$";
        }

    }

    protected void btnCCSubmit_Click(object sender, EventArgs e)
    {
        if (gblCCNumber.Value.Length == 16)
        {
            gblMessage.Text = "Purchase Complete. Please Collect Item.";
            fnCompletePurchase();
        }
        else
        {
            gblMessage.Text = "Invalid Credit Card #";

        }
    }

    private void fnStartProcess(string item, string price)
    {
        gblInProcess.Value = "true";
        lblItemSelected.Text = item;
        lblItemPrice.Text = price;
        txtAmtInsert.Text = "";
        txtBalAmount.Text = "";
        txtCCNumber.Text = "";
        gblCCNumber.Value = "";
        gblMessage.Text = "Insert $" + price;
        fnSetItem(false);
        fnSetCoins(true);
    }
    
    private void fnCompletePurchase()
    {
        if (gblInProcess.Value == "true")
        {
            gblInProcess.Value = "";
            gblCCNumber.Value = "";
            fnSetStock(lblItemSelected.Text);
            fnSetItem(true);
            fnSetCoins(false);
            
        }
    }

    private void fnCancelPurchase()
    {
        if (gblInProcess.Value == "true")
        {
            gblInProcess.Value = "";
            lblItemSelected.Text = "";
            lblItemPrice.Text = "";
            if (txtAmtInsert.Text != "" && txtAmtInsert.Text != "0")
                gblMessage.Text = "Purchase Cancelled. Please take back $" + txtAmtInsert.Text;
            else
                gblMessage.Text = "";
            txtAmtInsert.Text = "";
            txtBalAmount.Text = "";
            txtCCNumber.Text = "";
            gblCCNumber.Value = "";            

            fnSetItem(true);
            fnSetCoins(false);
        }

    }

    private void fnSetStock(string item)
    {
        switch (item)
        {
            case "Coke":
                if (gblStockCoke.Text == "1")
                    gblStockCoke.Text = "Out of Stock";
                else
                    gblStockCoke.Text = Convert.ToString(Convert.ToInt32(gblStockCoke.Text) - 1);
                break;
            case "Pepsi":
                if (gblStockPepsi.Text == "1")
                    gblStockPepsi.Text = "Out of Stock";
                else
                    gblStockPepsi.Text = Convert.ToString(Convert.ToInt32(gblStockPepsi.Text) - 1);
                break;
            case "7up":
                if (gblStock7up.Text == "1")
                    gblStock7up.Text = "Out of Stock";
                else
                    gblStock7up.Text = Convert.ToString(Convert.ToInt32(gblStock7up.Text) - 1);
                break;
            case "Fanta":
                if (gblStockFanta.Text == "1")
                    gblStockFanta.Text = "Out of Stock";
                else
                    gblStockFanta.Text = Convert.ToString(Convert.ToInt32(gblStockFanta.Text) - 1);
                break;
            case "RedBull":
                if (gblStockRedBull.Text == "1")
                    gblStockRedBull.Text = "Out of Stock";
                else
                    gblStockRedBull.Text = Convert.ToString(Convert.ToInt32(gblStockRedBull.Text) - 1);
                break;
            case "Lays":
                if (gblStockLays.Text == "1")
                    gblStockLays.Text = "Out of Stock";
                else
                    gblStockLays.Text = Convert.ToString(Convert.ToInt32(gblStockLays.Text) - 1);
                break;
            case "Cheetos":
                if (gblStockCheetos.Text == "1")
                    gblStockCheetos.Text = "Out of Stock";
                else
                    gblStockCheetos.Text = Convert.ToString(Convert.ToInt32(gblStockCheetos.Text) - 1);
                break;
            case "Kinley":
                if (gblStockKinley.Text == "1")
                    gblStockKinley.Text = "Out of Stock";
                else
                    gblStockKinley.Text = Convert.ToString(Convert.ToInt32(gblStockKinley.Text) - 1);
                break;
            case "Aquafina":
                if (gblStockAquafina.Text == "1")
                    gblStockAquafina.Text = "Out of Stock";
                else
                    gblStockAquafina.Text = Convert.ToString(Convert.ToInt32(gblStockAquafina.Text) - 1);
                break;
            case "DietPepsi":
                if (gblStockDietPepsi.Text == "1")
                    gblStockDietPepsi.Text = "Out of Stock";
                else
                    gblStockDietPepsi.Text = Convert.ToString(Convert.ToInt32(gblStockDietPepsi.Text) - 1);
                break;
            default:
                break;

        }        
    }

    private void fnSetItem(bool btnItem)
    {
        btnCoke.Enabled = btnItem;
        btnPepsi.Enabled = btnItem;
        btn7up.Enabled = btnItem;
        btnFanta.Enabled = btnItem;
        btnRedBull.Enabled = btnItem;
        btnLays.Enabled = btnItem;
        btnCheetos.Enabled = btnItem;
        btnKinley.Enabled = btnItem;
        btnAquafina.Enabled = btnItem;
        btnDietPepsi.Enabled = btnItem;

        if (gblStockCoke.Text == "Out of Stock")
            btnCoke.Enabled = false;
        if (gblStockPepsi.Text == "Out of Stock")
            btnPepsi.Enabled = false;
        if (gblStock7up.Text == "Out of Stock")
            btn7up.Enabled = false;
        if (gblStockFanta.Text == "Out of Stock")
            btnFanta.Enabled = false;
        if (gblStockRedBull.Text == "Out of Stock")
            btnRedBull.Enabled = false;
        if (gblStockLays.Text == "Out of Stock")
            btnLays.Enabled = false;
        if (gblStockCheetos.Text == "Out of Stock")
            btnCheetos.Enabled = false;
        if (gblStockKinley.Text == "Out of Stock")
            btnKinley.Enabled = false;
        if (gblStockAquafina.Text == "Out of Stock")
            btnAquafina.Enabled = false;
        if (gblStockDietPepsi.Text == "Out of Stock")
            btnDietPepsi.Enabled = false;

    }

    private void fnSetCoins(bool blnCoin)
    {
        btnd5.Enabled = blnCoin;
        btnd1.Enabled = blnCoin;
        btnc25.Enabled = blnCoin;
        btnc10.Enabled = blnCoin;
        btnc5.Enabled = blnCoin;
        btnCCSubmit.Enabled = blnCoin;
    }    

    //------------------------------------------------------------------------------------------------------------------------

    protected void btnCoke_Click(object sender, EventArgs e)
    {
        fnStartProcess("Coke", "1");
    }

    protected void btnPepsi_Click(object sender, EventArgs e)
    {
        fnStartProcess("Pepsi", "1");
    }

    protected void btn7up_Click(object sender, EventArgs e)
    {
        fnStartProcess("7up", "1");
    }

    protected void btnFanta_Click(object sender, EventArgs e)
    {
        fnStartProcess("Fanta", "1");
    }

    protected void btnRedBull_Click(object sender, EventArgs e)
    {
        fnStartProcess("RedBull", "2");
    }

    protected void btnLays_Click(object sender, EventArgs e)
    {
        fnStartProcess("Lays", "1.5");
    }

    protected void btnCheetos_Click(object sender, EventArgs e)
    {
        fnStartProcess("Cheetos", "1.5");
    }

    protected void btnKinley_Click(object sender, EventArgs e)
    {
        fnStartProcess("Kinley", "1");
    }

    protected void btnAquafina_Click(object sender, EventArgs e)
    {
        fnStartProcess("Aquafina", "1");
    }

    protected void btnDietPepsi_Click(object sender, EventArgs e)
    {
        fnStartProcess("DietPepsi", "1");
    }

    protected void btnd5_Click(object sender, EventArgs e)
    {
        fnInsertCash(5);
    }

    protected void btnd1_Click(object sender, EventArgs e)
    {
        fnInsertCash(1);
    }

    protected void btnc25_Click(object sender, EventArgs e)
    {
        fnInsertCash(0.25);
    }

    protected void btnc10_Click(object sender, EventArgs e)
    {
        fnInsertCash(0.1);
    }

    protected void btnc5_Click(object sender, EventArgs e)
    {
        fnInsertCash(0.05);
    }


    protected void btnCancel_Click(object sender, EventArgs e)
    {
        fnCancelPurchase();
    }

}