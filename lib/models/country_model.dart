class Country {
  Name name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Map<String, dynamic>? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Map<String, String>? languages;
  Map<String, Translation>? translations;
  List<double>? latlng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  Map<String, double>? gini;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;

  Country({
    required this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.gini,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  factory Country.fromMap(Map<String, dynamic> json) => Country(
        name: Name.fromMap(json["name"]),
        tld: json["tld"] == null
            ? []
            : List<String>.from(json["tld"]!.map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"],
        independent: json["independent"],
        status: json["status"],
        unMember: json["unMember"],
        currencies: Map.from(json["currencies"] ?? {})
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        idd: json["idd"] == null ? null : Idd.fromMap(json["idd"]),
        capital: json["capital"] == null
            ? []
            : List<String>.from(json["capital"]!.map((x) => x)),
        altSpellings: json["altSpellings"] == null
            ? []
            : List<String>.from(json["altSpellings"]!.map((x) => x)),
        region: json["region"],
        subregion: json["subregion"],
        languages: Map.from(json["languages"] ?? {})
            .map((k, v) => MapEntry<String, String>(k, v)),
        translations: Map.from(json["translations"]!).map(
            (k, v) => MapEntry<String, Translation>(k, Translation.fromMap(v))),
        latlng: json["latlng"] == null
            ? []
            : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
        landlocked: json["landlocked"],
        borders: json["borders"] == null
            ? []
            : List<String>.from(json["borders"]!.map((x) => x)),
        area: json["area"]?.toDouble(),
        demonyms: json["demonyms"] == null
            ? null
            : Demonyms.fromMap(json["demonyms"]),
        flag: json["flag"],
        maps: json["maps"] == null ? null : Maps.fromMap(json["maps"]),
        population: json["population"],
        gini: Map.from(json["gini"] ?? {})
            .map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        fifa: json["fifa"],
        car: json["car"] == null ? null : Car.fromMap(json["car"]),
        timezones: json["timezones"] == null
            ? []
            : List<String>.from(json["timezones"]!.map((x) => x)),
        continents: json["continents"] == null
            ? []
            : List<String>.from(json["continents"]!.map((x) => x)),
        flags: json["flags"] == null ? null : Flags.fromMap(json["flags"]),
        coatOfArms: json["coatOfArms"] == null
            ? null
            : CoatOfArms.fromMap(json["coatOfArms"]),
        startOfWeek: json["startOfWeek"],
        capitalInfo: json["capitalInfo"] == null
            ? null
            : CapitalInfo.fromMap(json["capitalInfo"]),
        postalCode: json["postalCode"] == null
            ? null
            : PostalCode.fromMap(json["postalCode"]),
      );

  Map<String, dynamic> toMap() => {
        "name": name.toMap(),
        "tld": tld == null ? [] : List<dynamic>.from(tld!.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "cioc": cioc,
        "independent": independent,
        "status": status,
        "unMember": unMember,
        "currencies": Map.from(currencies!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "idd": idd?.toMap(),
        "capital":
            capital == null ? [] : List<dynamic>.from(capital!.map((x) => x)),
        "altSpellings": altSpellings == null
            ? []
            : List<dynamic>.from(altSpellings!.map((x) => x)),
        "region": region,
        "subregion": subregion,
        "languages":
            Map.from(languages!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "translations": Map.from(translations!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
        "latlng":
            latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
        "landlocked": landlocked,
        "borders":
            borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
        "area": area,
        "demonyms": demonyms?.toMap(),
        "flag": flag,
        "maps": maps?.toMap(),
        "population": population,
        "gini": Map.from(gini!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "fifa": fifa,
        "car": car?.toMap(),
        "timezones": timezones == null
            ? []
            : List<dynamic>.from(timezones!.map((x) => x)),
        "continents": continents == null
            ? []
            : List<dynamic>.from(continents!.map((x) => x)),
        "flags": flags?.toMap(),
        "coatOfArms": coatOfArms?.toMap(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo?.toMap(),
        "postalCode": postalCode?.toMap(),
      };
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({
    this.latlng,
  });

  factory CapitalInfo.fromMap(Map<String, dynamic> json) => CapitalInfo(
        latlng: json["latlng"] == null
            ? []
            : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
      );

  Map<String, dynamic> toMap() => {
        "latlng":
            latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
      };
}

class Car {
  List<String>? signs;
  String? side;

  Car({
    this.signs,
    this.side,
  });

  factory Car.fromMap(Map<String, dynamic> json) => Car(
        signs: json["signs"] == null
            ? []
            : List<String>.from(json["signs"]!.map((x) => x)),
        side: json["side"],
      );

  Map<String, dynamic> toMap() => {
        "signs": signs == null ? [] : List<dynamic>.from(signs!.map((x) => x)),
        "side": side,
      };
}

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({
    this.png,
    this.svg,
  });

  factory CoatOfArms.fromMap(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"],
        svg: json["svg"],
      );

  Map<String, dynamic> toMap() => {
        "png": png,
        "svg": svg,
      };
}

class Currencies {
  Aed? mdl;
  Aed? usd;
  Aed? eur;
  Aed? aud;
  Aed? mzn;
  Aed? brl;
  Aed? cve;
  Aed? xaf;
  Aed? all;
  Aed? nzd;
  Aed? ngn;
  Aed? gmd;
  Aed? sos;
  Aed? yer;
  Aed? myr;
  Aed? xcd;
  Aed? gbp;
  Aed? mga;
  Aed? dzd;
  Aed? mad;
  Aed? mru;
  Aed? pyg;
  Aed? lkr;
  Aed? zar;
  Aed? kwd;
  Aed? sll;
  Aed? rwf;
  Aed? syp;
  Aed? hnl;
  Aed? jod;
  Aed? tvd;
  Aed? npr;
  Aed? lrd;
  Aed? ggp;
  Aed? djf;
  Aed? fjd;
  Aed? nok;
  Aed? fkp;
  Aed? kzt;
  Aed? tmt;
  Aed? bgn;
  Aed? xpf;
  Aed? bbd;
  Aed? stn;
  Aed? bnd;
  Aed? sgd;
  Aed? btn;
  Aed? inr;
  Aed? ars;
  Aed? azn;
  Aed? mxn;
  Aed? gtq;
  Aed? kes;
  Aed? czk;
  Aed? gip;
  Aed? awg;
  Aed? aed;
  Aed? ssp;
  Aed? xof;
  Aed? shp;
  Aed? bwp;
  Aed? uzs;
  Aed? tnd;
  Aed? hkd;
  Aed? mkd;
  Aed? srd;
  Aed? sbd;
  Aed? uah;
  Bam? bam;
  Aed? irr;
  Aed? cuc;
  Aed? cup;
  Aed? ern;
  Aed? currenciesTry;
  Aed? php;
  Aed? vuv;
  Aed? bob;
  Aed? ron;
  Aed? khr;
  Aed? zwl;
  Aed? jep;
  Aed? kgs;
  Aed? gyd;
  Aed? amd;
  Aed? lbp;
  Aed? dkk;
  Aed? pgk;
  Aed? zmw;
  Aed? ttd;
  Aed? pen;
  Aed? sek;
  Bam? sdg;
  Aed? omr;
  Aed? twd;
  Aed? mnt;
  Aed? tzs;
  Aed? cad;
  Aed? crc;
  Aed? cny;
  Aed? cop;
  Aed? mmk;
  Aed? rub;
  Aed? kpw;
  Aed? kyd;
  Aed? byn;
  Aed? szl;
  Aed? pln;
  Aed? chf;
  Aed? ves;
  Aed? pab;
  Aed? wst;
  Aed? fok;
  Aed? thb;
  Aed? bsd;
  Aed? top;
  Aed? bif;
  Aed? bhd;
  Aed? imp;
  Aed? htg;
  Aed? afn;
  Aed? ils;
  Aed? lyd;
  Aed? uyu;
  Aed? nio;
  Aed? ckd;
  Aed? lak;
  Aed? kid;
  Aed? ang;
  Aed? jmd;
  Aed? egp;
  Aed? clp;
  Aed? lsl;
  Aed? ghs;
  Aed? scr;
  Aed? aoa;
  Aed? bmd;
  Aed? pkr;
  Aed? sar;
  Aed? krw;
  Aed? etb;
  Aed? bdt;
  Aed? kmf;
  Aed? bzd;
  Aed? ugx;
  Aed? huf;
  Aed? isk;
  Aed? tjs;
  Aed? nad;
  Aed? rsd;
  Aed? mur;
  Aed? mop;
  Aed? mvr;
  Aed? idr;
  Aed? cdf;
  Aed? vnd;
  Aed? gnf;
  Aed? gel;
  Aed? mwk;
  Aed? iqd;
  Aed? jpy;
  Aed? dop;
  Aed? qar;

  Currencies({
    this.mdl,
    this.usd,
    this.eur,
    this.aud,
    this.mzn,
    this.brl,
    this.cve,
    this.xaf,
    this.all,
    this.nzd,
    this.ngn,
    this.gmd,
    this.sos,
    this.yer,
    this.myr,
    this.xcd,
    this.gbp,
    this.mga,
    this.dzd,
    this.mad,
    this.mru,
    this.pyg,
    this.lkr,
    this.zar,
    this.kwd,
    this.sll,
    this.rwf,
    this.syp,
    this.hnl,
    this.jod,
    this.tvd,
    this.npr,
    this.lrd,
    this.ggp,
    this.djf,
    this.fjd,
    this.nok,
    this.fkp,
    this.kzt,
    this.tmt,
    this.bgn,
    this.xpf,
    this.bbd,
    this.stn,
    this.bnd,
    this.sgd,
    this.btn,
    this.inr,
    this.ars,
    this.azn,
    this.mxn,
    this.gtq,
    this.kes,
    this.czk,
    this.gip,
    this.awg,
    this.aed,
    this.ssp,
    this.xof,
    this.shp,
    this.bwp,
    this.uzs,
    this.tnd,
    this.hkd,
    this.mkd,
    this.srd,
    this.sbd,
    this.uah,
    this.bam,
    this.irr,
    this.cuc,
    this.cup,
    this.ern,
    this.currenciesTry,
    this.php,
    this.vuv,
    this.bob,
    this.ron,
    this.khr,
    this.zwl,
    this.jep,
    this.kgs,
    this.gyd,
    this.amd,
    this.lbp,
    this.dkk,
    this.pgk,
    this.zmw,
    this.ttd,
    this.pen,
    this.sek,
    this.sdg,
    this.omr,
    this.twd,
    this.mnt,
    this.tzs,
    this.cad,
    this.crc,
    this.cny,
    this.cop,
    this.mmk,
    this.rub,
    this.kpw,
    this.kyd,
    this.byn,
    this.szl,
    this.pln,
    this.chf,
    this.ves,
    this.pab,
    this.wst,
    this.fok,
    this.thb,
    this.bsd,
    this.top,
    this.bif,
    this.bhd,
    this.imp,
    this.htg,
    this.afn,
    this.ils,
    this.lyd,
    this.uyu,
    this.nio,
    this.ckd,
    this.lak,
    this.kid,
    this.ang,
    this.jmd,
    this.egp,
    this.clp,
    this.lsl,
    this.ghs,
    this.scr,
    this.aoa,
    this.bmd,
    this.pkr,
    this.sar,
    this.krw,
    this.etb,
    this.bdt,
    this.kmf,
    this.bzd,
    this.ugx,
    this.huf,
    this.isk,
    this.tjs,
    this.nad,
    this.rsd,
    this.mur,
    this.mop,
    this.mvr,
    this.idr,
    this.cdf,
    this.vnd,
    this.gnf,
    this.gel,
    this.mwk,
    this.iqd,
    this.jpy,
    this.dop,
    this.qar,
  });

  factory Currencies.fromMap(Map<String, dynamic> json) => Currencies(
        mdl: json["MDL"] == null ? null : Aed.fromMap(json["MDL"]),
        usd: json["USD"] == null ? null : Aed.fromMap(json["USD"]),
        eur: json["EUR"] == null ? null : Aed.fromMap(json["EUR"]),
        aud: json["AUD"] == null ? null : Aed.fromMap(json["AUD"]),
        mzn: json["MZN"] == null ? null : Aed.fromMap(json["MZN"]),
        brl: json["BRL"] == null ? null : Aed.fromMap(json["BRL"]),
        cve: json["CVE"] == null ? null : Aed.fromMap(json["CVE"]),
        xaf: json["XAF"] == null ? null : Aed.fromMap(json["XAF"]),
        all: json["ALL"] == null ? null : Aed.fromMap(json["ALL"]),
        nzd: json["NZD"] == null ? null : Aed.fromMap(json["NZD"]),
        ngn: json["NGN"] == null ? null : Aed.fromMap(json["NGN"]),
        gmd: json["GMD"] == null ? null : Aed.fromMap(json["GMD"]),
        sos: json["SOS"] == null ? null : Aed.fromMap(json["SOS"]),
        yer: json["YER"] == null ? null : Aed.fromMap(json["YER"]),
        myr: json["MYR"] == null ? null : Aed.fromMap(json["MYR"]),
        xcd: json["XCD"] == null ? null : Aed.fromMap(json["XCD"]),
        gbp: json["GBP"] == null ? null : Aed.fromMap(json["GBP"]),
        mga: json["MGA"] == null ? null : Aed.fromMap(json["MGA"]),
        dzd: json["DZD"] == null ? null : Aed.fromMap(json["DZD"]),
        mad: json["MAD"] == null ? null : Aed.fromMap(json["MAD"]),
        mru: json["MRU"] == null ? null : Aed.fromMap(json["MRU"]),
        pyg: json["PYG"] == null ? null : Aed.fromMap(json["PYG"]),
        lkr: json["LKR"] == null ? null : Aed.fromMap(json["LKR"]),
        zar: json["ZAR"] == null ? null : Aed.fromMap(json["ZAR"]),
        kwd: json["KWD"] == null ? null : Aed.fromMap(json["KWD"]),
        sll: json["SLL"] == null ? null : Aed.fromMap(json["SLL"]),
        rwf: json["RWF"] == null ? null : Aed.fromMap(json["RWF"]),
        syp: json["SYP"] == null ? null : Aed.fromMap(json["SYP"]),
        hnl: json["HNL"] == null ? null : Aed.fromMap(json["HNL"]),
        jod: json["JOD"] == null ? null : Aed.fromMap(json["JOD"]),
        tvd: json["TVD"] == null ? null : Aed.fromMap(json["TVD"]),
        npr: json["NPR"] == null ? null : Aed.fromMap(json["NPR"]),
        lrd: json["LRD"] == null ? null : Aed.fromMap(json["LRD"]),
        ggp: json["GGP"] == null ? null : Aed.fromMap(json["GGP"]),
        djf: json["DJF"] == null ? null : Aed.fromMap(json["DJF"]),
        fjd: json["FJD"] == null ? null : Aed.fromMap(json["FJD"]),
        nok: json["NOK"] == null ? null : Aed.fromMap(json["NOK"]),
        fkp: json["FKP"] == null ? null : Aed.fromMap(json["FKP"]),
        kzt: json["KZT"] == null ? null : Aed.fromMap(json["KZT"]),
        tmt: json["TMT"] == null ? null : Aed.fromMap(json["TMT"]),
        bgn: json["BGN"] == null ? null : Aed.fromMap(json["BGN"]),
        xpf: json["XPF"] == null ? null : Aed.fromMap(json["XPF"]),
        bbd: json["BBD"] == null ? null : Aed.fromMap(json["BBD"]),
        stn: json["STN"] == null ? null : Aed.fromMap(json["STN"]),
        bnd: json["BND"] == null ? null : Aed.fromMap(json["BND"]),
        sgd: json["SGD"] == null ? null : Aed.fromMap(json["SGD"]),
        btn: json["BTN"] == null ? null : Aed.fromMap(json["BTN"]),
        inr: json["INR"] == null ? null : Aed.fromMap(json["INR"]),
        ars: json["ARS"] == null ? null : Aed.fromMap(json["ARS"]),
        azn: json["AZN"] == null ? null : Aed.fromMap(json["AZN"]),
        mxn: json["MXN"] == null ? null : Aed.fromMap(json["MXN"]),
        gtq: json["GTQ"] == null ? null : Aed.fromMap(json["GTQ"]),
        kes: json["KES"] == null ? null : Aed.fromMap(json["KES"]),
        czk: json["CZK"] == null ? null : Aed.fromMap(json["CZK"]),
        gip: json["GIP"] == null ? null : Aed.fromMap(json["GIP"]),
        awg: json["AWG"] == null ? null : Aed.fromMap(json["AWG"]),
        aed: json["AED"] == null ? null : Aed.fromMap(json["AED"]),
        ssp: json["SSP"] == null ? null : Aed.fromMap(json["SSP"]),
        xof: json["XOF"] == null ? null : Aed.fromMap(json["XOF"]),
        shp: json["SHP"] == null ? null : Aed.fromMap(json["SHP"]),
        bwp: json["BWP"] == null ? null : Aed.fromMap(json["BWP"]),
        uzs: json["UZS"] == null ? null : Aed.fromMap(json["UZS"]),
        tnd: json["TND"] == null ? null : Aed.fromMap(json["TND"]),
        hkd: json["HKD"] == null ? null : Aed.fromMap(json["HKD"]),
        mkd: json["MKD"] == null ? null : Aed.fromMap(json["MKD"]),
        srd: json["SRD"] == null ? null : Aed.fromMap(json["SRD"]),
        sbd: json["SBD"] == null ? null : Aed.fromMap(json["SBD"]),
        uah: json["UAH"] == null ? null : Aed.fromMap(json["UAH"]),
        bam: json["BAM"] == null ? null : Bam.fromMap(json["BAM"]),
        irr: json["IRR"] == null ? null : Aed.fromMap(json["IRR"]),
        cuc: json["CUC"] == null ? null : Aed.fromMap(json["CUC"]),
        cup: json["CUP"] == null ? null : Aed.fromMap(json["CUP"]),
        ern: json["ERN"] == null ? null : Aed.fromMap(json["ERN"]),
        currenciesTry: json["TRY"] == null ? null : Aed.fromMap(json["TRY"]),
        php: json["PHP"] == null ? null : Aed.fromMap(json["PHP"]),
        vuv: json["VUV"] == null ? null : Aed.fromMap(json["VUV"]),
        bob: json["BOB"] == null ? null : Aed.fromMap(json["BOB"]),
        ron: json["RON"] == null ? null : Aed.fromMap(json["RON"]),
        khr: json["KHR"] == null ? null : Aed.fromMap(json["KHR"]),
        zwl: json["ZWL"] == null ? null : Aed.fromMap(json["ZWL"]),
        jep: json["JEP"] == null ? null : Aed.fromMap(json["JEP"]),
        kgs: json["KGS"] == null ? null : Aed.fromMap(json["KGS"]),
        gyd: json["GYD"] == null ? null : Aed.fromMap(json["GYD"]),
        amd: json["AMD"] == null ? null : Aed.fromMap(json["AMD"]),
        lbp: json["LBP"] == null ? null : Aed.fromMap(json["LBP"]),
        dkk: json["DKK"] == null ? null : Aed.fromMap(json["DKK"]),
        pgk: json["PGK"] == null ? null : Aed.fromMap(json["PGK"]),
        zmw: json["ZMW"] == null ? null : Aed.fromMap(json["ZMW"]),
        ttd: json["TTD"] == null ? null : Aed.fromMap(json["TTD"]),
        pen: json["PEN"] == null ? null : Aed.fromMap(json["PEN"]),
        sek: json["SEK"] == null ? null : Aed.fromMap(json["SEK"]),
        sdg: json["SDG"] == null ? null : Bam.fromMap(json["SDG"]),
        omr: json["OMR"] == null ? null : Aed.fromMap(json["OMR"]),
        twd: json["TWD"] == null ? null : Aed.fromMap(json["TWD"]),
        mnt: json["MNT"] == null ? null : Aed.fromMap(json["MNT"]),
        tzs: json["TZS"] == null ? null : Aed.fromMap(json["TZS"]),
        cad: json["CAD"] == null ? null : Aed.fromMap(json["CAD"]),
        crc: json["CRC"] == null ? null : Aed.fromMap(json["CRC"]),
        cny: json["CNY"] == null ? null : Aed.fromMap(json["CNY"]),
        cop: json["COP"] == null ? null : Aed.fromMap(json["COP"]),
        mmk: json["MMK"] == null ? null : Aed.fromMap(json["MMK"]),
        rub: json["RUB"] == null ? null : Aed.fromMap(json["RUB"]),
        kpw: json["KPW"] == null ? null : Aed.fromMap(json["KPW"]),
        kyd: json["KYD"] == null ? null : Aed.fromMap(json["KYD"]),
        byn: json["BYN"] == null ? null : Aed.fromMap(json["BYN"]),
        szl: json["SZL"] == null ? null : Aed.fromMap(json["SZL"]),
        pln: json["PLN"] == null ? null : Aed.fromMap(json["PLN"]),
        chf: json["CHF"] == null ? null : Aed.fromMap(json["CHF"]),
        ves: json["VES"] == null ? null : Aed.fromMap(json["VES"]),
        pab: json["PAB"] == null ? null : Aed.fromMap(json["PAB"]),
        wst: json["WST"] == null ? null : Aed.fromMap(json["WST"]),
        fok: json["FOK"] == null ? null : Aed.fromMap(json["FOK"]),
        thb: json["THB"] == null ? null : Aed.fromMap(json["THB"]),
        bsd: json["BSD"] == null ? null : Aed.fromMap(json["BSD"]),
        top: json["TOP"] == null ? null : Aed.fromMap(json["TOP"]),
        bif: json["BIF"] == null ? null : Aed.fromMap(json["BIF"]),
        bhd: json["BHD"] == null ? null : Aed.fromMap(json["BHD"]),
        imp: json["IMP"] == null ? null : Aed.fromMap(json["IMP"]),
        htg: json["HTG"] == null ? null : Aed.fromMap(json["HTG"]),
        afn: json["AFN"] == null ? null : Aed.fromMap(json["AFN"]),
        ils: json["ILS"] == null ? null : Aed.fromMap(json["ILS"]),
        lyd: json["LYD"] == null ? null : Aed.fromMap(json["LYD"]),
        uyu: json["UYU"] == null ? null : Aed.fromMap(json["UYU"]),
        nio: json["NIO"] == null ? null : Aed.fromMap(json["NIO"]),
        ckd: json["CKD"] == null ? null : Aed.fromMap(json["CKD"]),
        lak: json["LAK"] == null ? null : Aed.fromMap(json["LAK"]),
        kid: json["KID"] == null ? null : Aed.fromMap(json["KID"]),
        ang: json["ANG"] == null ? null : Aed.fromMap(json["ANG"]),
        jmd: json["JMD"] == null ? null : Aed.fromMap(json["JMD"]),
        egp: json["EGP"] == null ? null : Aed.fromMap(json["EGP"]),
        clp: json["CLP"] == null ? null : Aed.fromMap(json["CLP"]),
        lsl: json["LSL"] == null ? null : Aed.fromMap(json["LSL"]),
        ghs: json["GHS"] == null ? null : Aed.fromMap(json["GHS"]),
        scr: json["SCR"] == null ? null : Aed.fromMap(json["SCR"]),
        aoa: json["AOA"] == null ? null : Aed.fromMap(json["AOA"]),
        bmd: json["BMD"] == null ? null : Aed.fromMap(json["BMD"]),
        pkr: json["PKR"] == null ? null : Aed.fromMap(json["PKR"]),
        sar: json["SAR"] == null ? null : Aed.fromMap(json["SAR"]),
        krw: json["KRW"] == null ? null : Aed.fromMap(json["KRW"]),
        etb: json["ETB"] == null ? null : Aed.fromMap(json["ETB"]),
        bdt: json["BDT"] == null ? null : Aed.fromMap(json["BDT"]),
        kmf: json["KMF"] == null ? null : Aed.fromMap(json["KMF"]),
        bzd: json["BZD"] == null ? null : Aed.fromMap(json["BZD"]),
        ugx: json["UGX"] == null ? null : Aed.fromMap(json["UGX"]),
        huf: json["HUF"] == null ? null : Aed.fromMap(json["HUF"]),
        isk: json["ISK"] == null ? null : Aed.fromMap(json["ISK"]),
        tjs: json["TJS"] == null ? null : Aed.fromMap(json["TJS"]),
        nad: json["NAD"] == null ? null : Aed.fromMap(json["NAD"]),
        rsd: json["RSD"] == null ? null : Aed.fromMap(json["RSD"]),
        mur: json["MUR"] == null ? null : Aed.fromMap(json["MUR"]),
        mop: json["MOP"] == null ? null : Aed.fromMap(json["MOP"]),
        mvr: json["MVR"] == null ? null : Aed.fromMap(json["MVR"]),
        idr: json["IDR"] == null ? null : Aed.fromMap(json["IDR"]),
        cdf: json["CDF"] == null ? null : Aed.fromMap(json["CDF"]),
        vnd: json["VND"] == null ? null : Aed.fromMap(json["VND"]),
        gnf: json["GNF"] == null ? null : Aed.fromMap(json["GNF"]),
        gel: json["GEL"] == null ? null : Aed.fromMap(json["GEL"]),
        mwk: json["MWK"] == null ? null : Aed.fromMap(json["MWK"]),
        iqd: json["IQD"] == null ? null : Aed.fromMap(json["IQD"]),
        jpy: json["JPY"] == null ? null : Aed.fromMap(json["JPY"]),
        dop: json["DOP"] == null ? null : Aed.fromMap(json["DOP"]),
        qar: json["QAR"] == null ? null : Aed.fromMap(json["QAR"]),
      );

  Map<String, dynamic> toMap() => {
        "MDL": mdl?.toMap(),
        "USD": usd?.toMap(),
        "EUR": eur?.toMap(),
        "AUD": aud?.toMap(),
        "MZN": mzn?.toMap(),
        "BRL": brl?.toMap(),
        "CVE": cve?.toMap(),
        "XAF": xaf?.toMap(),
        "ALL": all?.toMap(),
        "NZD": nzd?.toMap(),
        "NGN": ngn?.toMap(),
        "GMD": gmd?.toMap(),
        "SOS": sos?.toMap(),
        "YER": yer?.toMap(),
        "MYR": myr?.toMap(),
        "XCD": xcd?.toMap(),
        "GBP": gbp?.toMap(),
        "MGA": mga?.toMap(),
        "DZD": dzd?.toMap(),
        "MAD": mad?.toMap(),
        "MRU": mru?.toMap(),
        "PYG": pyg?.toMap(),
        "LKR": lkr?.toMap(),
        "ZAR": zar?.toMap(),
        "KWD": kwd?.toMap(),
        "SLL": sll?.toMap(),
        "RWF": rwf?.toMap(),
        "SYP": syp?.toMap(),
        "HNL": hnl?.toMap(),
        "JOD": jod?.toMap(),
        "TVD": tvd?.toMap(),
        "NPR": npr?.toMap(),
        "LRD": lrd?.toMap(),
        "GGP": ggp?.toMap(),
        "DJF": djf?.toMap(),
        "FJD": fjd?.toMap(),
        "NOK": nok?.toMap(),
        "FKP": fkp?.toMap(),
        "KZT": kzt?.toMap(),
        "TMT": tmt?.toMap(),
        "BGN": bgn?.toMap(),
        "XPF": xpf?.toMap(),
        "BBD": bbd?.toMap(),
        "STN": stn?.toMap(),
        "BND": bnd?.toMap(),
        "SGD": sgd?.toMap(),
        "BTN": btn?.toMap(),
        "INR": inr?.toMap(),
        "ARS": ars?.toMap(),
        "AZN": azn?.toMap(),
        "MXN": mxn?.toMap(),
        "GTQ": gtq?.toMap(),
        "KES": kes?.toMap(),
        "CZK": czk?.toMap(),
        "GIP": gip?.toMap(),
        "AWG": awg?.toMap(),
        "AED": aed?.toMap(),
        "SSP": ssp?.toMap(),
        "XOF": xof?.toMap(),
        "SHP": shp?.toMap(),
        "BWP": bwp?.toMap(),
        "UZS": uzs?.toMap(),
        "TND": tnd?.toMap(),
        "HKD": hkd?.toMap(),
        "MKD": mkd?.toMap(),
        "SRD": srd?.toMap(),
        "SBD": sbd?.toMap(),
        "UAH": uah?.toMap(),
        "BAM": bam?.toMap(),
        "IRR": irr?.toMap(),
        "CUC": cuc?.toMap(),
        "CUP": cup?.toMap(),
        "ERN": ern?.toMap(),
        "TRY": currenciesTry?.toMap(),
        "PHP": php?.toMap(),
        "VUV": vuv?.toMap(),
        "BOB": bob?.toMap(),
        "RON": ron?.toMap(),
        "KHR": khr?.toMap(),
        "ZWL": zwl?.toMap(),
        "JEP": jep?.toMap(),
        "KGS": kgs?.toMap(),
        "GYD": gyd?.toMap(),
        "AMD": amd?.toMap(),
        "LBP": lbp?.toMap(),
        "DKK": dkk?.toMap(),
        "PGK": pgk?.toMap(),
        "ZMW": zmw?.toMap(),
        "TTD": ttd?.toMap(),
        "PEN": pen?.toMap(),
        "SEK": sek?.toMap(),
        "SDG": sdg?.toMap(),
        "OMR": omr?.toMap(),
        "TWD": twd?.toMap(),
        "MNT": mnt?.toMap(),
        "TZS": tzs?.toMap(),
        "CAD": cad?.toMap(),
        "CRC": crc?.toMap(),
        "CNY": cny?.toMap(),
        "COP": cop?.toMap(),
        "MMK": mmk?.toMap(),
        "RUB": rub?.toMap(),
        "KPW": kpw?.toMap(),
        "KYD": kyd?.toMap(),
        "BYN": byn?.toMap(),
        "SZL": szl?.toMap(),
        "PLN": pln?.toMap(),
        "CHF": chf?.toMap(),
        "VES": ves?.toMap(),
        "PAB": pab?.toMap(),
        "WST": wst?.toMap(),
        "FOK": fok?.toMap(),
        "THB": thb?.toMap(),
        "BSD": bsd?.toMap(),
        "TOP": top?.toMap(),
        "BIF": bif?.toMap(),
        "BHD": bhd?.toMap(),
        "IMP": imp?.toMap(),
        "HTG": htg?.toMap(),
        "AFN": afn?.toMap(),
        "ILS": ils?.toMap(),
        "LYD": lyd?.toMap(),
        "UYU": uyu?.toMap(),
        "NIO": nio?.toMap(),
        "CKD": ckd?.toMap(),
        "LAK": lak?.toMap(),
        "KID": kid?.toMap(),
        "ANG": ang?.toMap(),
        "JMD": jmd?.toMap(),
        "EGP": egp?.toMap(),
        "CLP": clp?.toMap(),
        "LSL": lsl?.toMap(),
        "GHS": ghs?.toMap(),
        "SCR": scr?.toMap(),
        "AOA": aoa?.toMap(),
        "BMD": bmd?.toMap(),
        "PKR": pkr?.toMap(),
        "SAR": sar?.toMap(),
        "KRW": krw?.toMap(),
        "ETB": etb?.toMap(),
        "BDT": bdt?.toMap(),
        "KMF": kmf?.toMap(),
        "BZD": bzd?.toMap(),
        "UGX": ugx?.toMap(),
        "HUF": huf?.toMap(),
        "ISK": isk?.toMap(),
        "TJS": tjs?.toMap(),
        "NAD": nad?.toMap(),
        "RSD": rsd?.toMap(),
        "MUR": mur?.toMap(),
        "MOP": mop?.toMap(),
        "MVR": mvr?.toMap(),
        "IDR": idr?.toMap(),
        "CDF": cdf?.toMap(),
        "VND": vnd?.toMap(),
        "GNF": gnf?.toMap(),
        "GEL": gel?.toMap(),
        "MWK": mwk?.toMap(),
        "IQD": iqd?.toMap(),
        "JPY": jpy?.toMap(),
        "DOP": dop?.toMap(),
        "QAR": qar?.toMap(),
      };
}

class Aed {
  String? name;
  String? symbol;

  Aed({
    this.name,
    this.symbol,
  });

  factory Aed.fromMap(Map<String, dynamic> json) => Aed(
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "symbol": symbol,
      };
}

class Bam {
  String? name;

  Bam({
    this.name,
  });

  factory Bam.fromMap(Map<String, dynamic> json) => Bam(
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
      };
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({
    this.eng,
    this.fra,
  });

  factory Demonyms.fromMap(Map<String, dynamic> json) => Demonyms(
        eng: json["eng"] == null ? null : Eng.fromMap(json["eng"]),
        fra: json["fra"] == null ? null : Eng.fromMap(json["fra"]),
      );

  Map<String, dynamic> toMap() => {
        "eng": eng?.toMap(),
        "fra": fra?.toMap(),
      };
}

class Eng {
  String? f;
  String? m;

  Eng({
    this.f,
    this.m,
  });

  factory Eng.fromMap(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
      );

  Map<String, dynamic> toMap() => {
        "f": f,
        "m": m,
      };
}

class Flags {
  String? png;
  String? svg;
  String? alt;

  Flags({
    this.png,
    this.svg,
    this.alt,
  });

  factory Flags.fromMap(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
      );

  Map<String, dynamic> toMap() => {
        "png": png,
        "svg": svg,
        "alt": alt,
      };
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({
    this.root,
    this.suffixes,
  });

  factory Idd.fromMap(Map<String, dynamic> json) => Idd(
        root: json["root"],
        suffixes: json["suffixes"] == null
            ? []
            : List<String>.from(json["suffixes"]!.map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "root": root,
        "suffixes":
            suffixes == null ? [] : List<dynamic>.from(suffixes!.map((x) => x)),
      };
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  factory Maps.fromMap(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
      );

  Map<String, dynamic> toMap() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
      };
}

class Name {
  String common;
  String? official;
  Map<String, Translation>? nativeName;

  Name({
    required this.common,
    this.official,
    this.nativeName,
  });

  factory Name.fromMap(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: Map.from(json["nativeName"] ?? {}).map(
            (k, v) => MapEntry<String, Translation>(k, Translation.fromMap(v))),
      );

  Map<String, dynamic> toMap() => {
        "common": common,
        "official": official,
        "nativeName": Map.from(nativeName!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
      };
}

class Translation {
  String? official;
  String? common;

  Translation({
    this.official,
    this.common,
  });

  factory Translation.fromMap(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
      );

  Map<String, dynamic> toMap() => {
        "official": official,
        "common": common,
      };
}

class PostalCode {
  String? format;
  String? regex;

  PostalCode({
    this.format,
    this.regex,
  });

  factory PostalCode.fromMap(Map<String, dynamic> json) => PostalCode(
        format: json["format"],
        regex: json["regex"],
      );

  Map<String, dynamic> toMap() => {
        "format": format,
        "regex": regex,
      };
}
