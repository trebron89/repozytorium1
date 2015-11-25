using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.Linq;


namespace WebApplication1.klasy
{
   // [Serializable]
    public class Samochod
    {
        private int _id;
        private string _marka;
        private string _model;
        private int _cena;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        public string Marka
        {
            get { return _marka; }
            set { _marka = value; }
        }
        public string Model
        {
            get { return _model; }
            set { _model = value; }
        }
        public int Cena
        {
            get { return _cena; }
            set { _cena = value; }
        }

        private List<Samochod> _listaSamochodow;

        public List<Samochod> listaSamochodow
        {
            get { return _listaSamochodow; }
            set { _listaSamochodow = value; }
        }

        public Samochod()
        {

        }

        public List<Samochod> WyswietlListeSamochow()
        {
            bazaDataContext kontekst = new bazaDataContext();
            Table<SAMOCHODY> tabelaSamochody = kontekst.GetTable<SAMOCHODY>();

            return tabelaSamochody.Select(rekord => new Samochod()
            {
                Id = rekord.ID,
                Marka = rekord.Marka,
                Model = rekord.Model,
                Cena = (rekord.Cena == null) ? 0 : (int)rekord.Cena
            }
            ).ToList();            
        }


    }
}