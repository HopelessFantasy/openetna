.class public Lorg/bouncycastle/asn1/x509/X509Name;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "X509Name.java"


# static fields
.field public static final BUSINESS_CATEGORY:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final COUNTRY_OF_CITIZENSHIP:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final COUNTRY_OF_RESIDENCE:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DATE_OF_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DC:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DN_QUALIFIER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static DefaultLookUp:Ljava/util/Hashtable;

.field public static DefaultReverse:Z

.field public static DefaultSymbols:Ljava/util/Hashtable;

.field public static final E:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GENDER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GENERATION:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GIVENNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final INITIALS:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NAME_AT_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static OIDLookUp:Ljava/util/Hashtable;

.field public static final OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PLACE_OF_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final POSTAL_ADDRESS:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final POSTAL_CODE:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PSEUDONYM:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static RFC1779Symbols:Ljava/util/Hashtable;

.field public static RFC2253Symbols:Ljava/util/Hashtable;

.field public static final SERIALNUMBER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ST:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final STREET:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SURNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static SymbolLookUp:Ljava/util/Hashtable;

.field public static final T:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UNIQUE_IDENTIFIER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UnstructuredAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UnstructuredName:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field private converter:Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;

.field private elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

.field private seq:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const-string v7, "OU"

    const-string v6, "O"

    const-string v5, "L"

    const-string v4, "CN"

    const-string v3, "C"

    .line 34
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->T:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->SN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 64
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.9"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->STREET:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 69
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->SN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->SERIALNUMBER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 74
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 79
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->ST:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 84
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->SURNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 85
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->INITIALS:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 87
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->GENERATION:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 88
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 93
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.17"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 105
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.46"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 111
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.65"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 118
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 124
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 130
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->GENDER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 137
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 144
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 151
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.36.8.3.14"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 157
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.16"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 164
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 169
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 170
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 175
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->E:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 180
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DC:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 185
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->UID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 190
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->OIDLookUp:Ljava/util/Hashtable;

    .line 196
    const/4 v0, 0x0

    sput-boolean v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    .line 202
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->OIDLookUp:Ljava/util/Hashtable;

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    .line 208
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    .line 214
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    .line 220
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->SymbolLookUp:Ljava/util/Hashtable;

    .line 225
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->SymbolLookUp:Ljava/util/Hashtable;

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    .line 234
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->T:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->ST:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->SN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->DC:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->UID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->STREET:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->SURNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SURNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "GIVENNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->INITIALS:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "INITIALS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->GENERATION:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "GENERATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "unstructuredAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "unstructuredName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UniqueIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "Pseudonym"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PostalAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "NameAtBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CountryOfCitizenship"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CountryOfResidence"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->GENDER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "Gender"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PlaceOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DateOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PostalCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "BusinessCategory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->ST:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->STREET:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->DC:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->UID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->ST:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->STREET:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "c"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "o"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "t"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->T:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "ou"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "cn"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "l"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "st"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->ST:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "sn"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->SN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "serialnumber"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->SN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "street"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->STREET:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "emailaddress"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->E:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dc"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->DC:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "e"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->E:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "uid"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->UID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "surname"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->SURNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "givenname"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "initials"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->INITIALS:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "generation"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->GENERATION:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "unstructuredaddress"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "unstructuredname"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "uniqueidentifier"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dn"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "pseudonym"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "postaladdress"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "nameofbirth"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "countryofcitizenship"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "countryofresidence"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "gender"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->GENDER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "placeofbirth"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dateofbirth"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "postalcode"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "businesscategory"

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "dirName"

    .prologue
    .line 534
    sget-boolean v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 5
    .parameter "dirName"
    .parameter "converter"

    .prologue
    .line 547
    sget-boolean v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 548
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 3
    .parameter "attributes"

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    .line 413
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .registers 4
    .parameter "ordering"
    .parameter "attributes"

    .prologue
    .line 427
    new-instance v0, Lorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;Lorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;)V

    .line 428
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;Lorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;)V
    .registers 12
    .parameter "ordering"
    .parameter "attributes"
    .parameter "converter"

    .prologue
    .line 445
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 317
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/X509Name;->converter:Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 319
    new-instance v5, Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/x509/X509NameElementList;-><init>()V

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    .line 447
    const/4 v3, 0x0

    .line 448
    .local v3, problem:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->converter:Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 450
    if-eqz p1, :cond_55

    .line 452
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v1, v5, :cond_28

    .line 454
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 456
    .local v2, key:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 457
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_4d

    .line 459
    move-object v3, v2

    .line 483
    .end local v1           #i:I
    .end local v2           #key:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #value:Ljava/lang/String;
    :cond_28
    :goto_28
    if-eqz v3, :cond_75

    .line 485
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No attribute for object id - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - passed to distinguished name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 462
    .restart local v1       #i:I
    .restart local v2       #key:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v4       #value:Ljava/lang/String;
    :cond_4d
    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v5, v2, v4}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 467
    .end local v1           #i:I
    .end local v2           #key:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #value:Ljava/lang/String;
    :cond_55
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 469
    .local v0, e:Ljava/util/Enumeration;
    :goto_59
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 471
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 473
    .restart local v2       #key:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 474
    .restart local v4       #value:Ljava/lang/String;
    if-nez v4, :cond_6f

    .line 476
    move-object v3, v2

    .line 477
    goto :goto_28

    .line 479
    :cond_6f
    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v5, v2, v4}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    goto :goto_59

    .line 488
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v2           #key:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #value:Ljava/lang/String;
    :cond_75
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 4
    .parameter "oids"
    .parameter "values"

    .prologue
    .line 497
    new-instance v0, Lorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 498
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 8
    .parameter "oids"
    .parameter "values"
    .parameter "converter"

    .prologue
    .line 510
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 317
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/X509Name;->converter:Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 319
    new-instance v1, Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/x509/X509NameElementList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    .line 511
    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->converter:Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 513
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_21

    .line 515
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "oids vector must be same length as values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 521
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 525
    :cond_3c
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 13
    .parameter "seq"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 360
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 317
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/bouncycastle/asn1/x509/X509Name;->converter:Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 319
    new-instance v7, Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/x509/X509NameElementList;-><init>()V

    iput-object v7, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    .line 361
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/X509Name;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 363
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 365
    .local v0, e:Ljava/util/Enumeration;
    :cond_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 367
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Set;

    .line 369
    .local v4, set:Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v7

    if-ge v1, v7, :cond_15

    .line 372
    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 374
    .local v3, s:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 376
    .local v2, key:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v3, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    .line 379
    .local v5, value:Lorg/bouncycastle/asn1/DEREncodable;
    instance-of v7, v5, Lorg/bouncycastle/asn1/DERString;

    if-eqz v7, :cond_4d

    .line 381
    check-cast v5, Lorg/bouncycastle/asn1/DERString;

    .end local v5           #value:Lorg/bouncycastle/asn1/DEREncodable;
    invoke-interface {v5}, Lorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, valueStr:Ljava/lang/String;
    :goto_42
    iget-object v7, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    if-eqz v1, :cond_71

    move v8, v10

    :goto_47
    invoke-virtual {v7, v2, v6, v8}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Z)V

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 385
    .end local v6           #valueStr:Ljava/lang/String;
    .restart local v5       #value:Lorg/bouncycastle/asn1/DEREncodable;
    :cond_4d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/bouncycastle/asn1/x509/X509Name;->bytesToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #valueStr:Ljava/lang/String;
    goto :goto_42

    .end local v5           #value:Lorg/bouncycastle/asn1/DEREncodable;
    :cond_71
    move v8, v9

    .line 392
    goto :goto_47

    .line 396
    .end local v1           #i:I
    .end local v2           #key:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v3           #s:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4           #set:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v6           #valueStr:Ljava/lang/String;
    :cond_73
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 4
    .parameter "reverse"
    .parameter "dirName"

    .prologue
    .line 560
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 5
    .parameter "reverse"
    .parameter "dirName"
    .parameter "converter"

    .prologue
    .line 575
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 576
    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .registers 5
    .parameter "reverse"
    .parameter "lookUp"
    .parameter "dirName"

    .prologue
    .line 596
    new-instance v0, Lorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 597
    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 23
    .parameter "reverse"
    .parameter "lookUp"
    .parameter "dirName"
    .parameter "converter"

    .prologue
    .line 639
    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 317
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/asn1/x509/X509Name;->converter:Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 319
    new-instance v15, Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-direct {v15}, Lorg/bouncycastle/asn1/x509/X509NameElementList;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    .line 640
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/asn1/x509/X509Name;->converter:Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 641
    new-instance v5, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 643
    .local v5, nTok:Lorg/bouncycastle/asn1/x509/X509NameTokenizer;
    :cond_21
    :goto_21
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_ae

    .line 645
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 646
    .local v11, token:Ljava/lang/String;
    const/16 v15, 0x3d

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 648
    .local v4, index:I
    const/4 v15, -0x1

    if-ne v4, v15, :cond_3c

    .line 650
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "badly formated directory string"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 653
    :cond_3c
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 654
    .local v6, name:Ljava/lang/String;
    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 655
    .local v13, value:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/X509Name;->decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v9

    .line 657
    .local v9, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const/16 v15, 0x2b

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-lez v15, :cond_a4

    .line 659
    new-instance v12, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;

    const/16 v15, 0x2b

    invoke-direct {v12, v13, v15}, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 662
    .local v12, vTok:Lorg/bouncycastle/asn1/x509/X509NameTokenizer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object v15, v0

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 665
    :goto_6f
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_21

    .line 667
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 668
    .local v10, sv:Ljava/lang/String;
    const/16 v15, 0x3d

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 670
    .local v7, ndx:I
    const/4 v15, 0x0

    invoke-virtual {v10, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 671
    .local v8, nm:Ljava/lang/String;
    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 673
    .local v14, vl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object v15, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/X509Name;->decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v16

    const/16 v17, 0x1

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v14

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Z)V

    goto :goto_6f

    .line 680
    .end local v7           #ndx:I
    .end local v8           #nm:Ljava/lang/String;
    .end local v10           #sv:Ljava/lang/String;
    .end local v12           #vTok:Lorg/bouncycastle/asn1/x509/X509NameTokenizer;
    .end local v14           #vl:Ljava/lang/String;
    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object v15, v0

    invoke-virtual {v15, v9, v13}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 685
    .end local v4           #index:I
    .end local v6           #name:Ljava/lang/String;
    .end local v9           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v11           #token:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :cond_ae
    if-eqz p1, :cond_be

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->reverse()Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    .line 691
    :cond_be
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V
    .registers 10
    .parameter "buf"
    .parameter "oidSymbols"
    .parameter "oid"
    .parameter "value"

    .prologue
    .line 1026
    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1028
    .local v2, sym:Ljava/lang/String;
    if-eqz v2, :cond_61

    .line 1030
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1037
    :goto_b
    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1039
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1041
    .local v1, index:I
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1043
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1045
    .local v0, end:I
    :goto_1b
    if-eq v1, v0, :cond_69

    .line 1047
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_55

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_55

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_55

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_55

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_55

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_55

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_5e

    .line 1055
    :cond_55
    const-string v3, "\\"

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1056
    add-int/lit8 v1, v1, 0x1

    .line 1057
    add-int/lit8 v0, v0, 0x1

    .line 1060
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1034
    .end local v0           #end:I
    .end local v1           #index:I
    :cond_61
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 1062
    .restart local v0       #end:I
    .restart local v1       #index:I
    :cond_69
    return-void
.end method

.method private bytesToString([B)Ljava/lang/String;
    .registers 5
    .parameter "data"

    .prologue
    .line 1144
    array-length v2, p1

    new-array v0, v2, [C

    .line 1146
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_11

    .line 1148
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 1146
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1151
    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 7
    .parameter "name"
    .parameter "lookUp"

    .prologue
    const/4 v3, 0x0

    .line 603
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OID."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 605
    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 618
    :goto_17
    return-object v1

    .line 607
    :cond_18
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2e

    .line 609
    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_17

    .line 612
    :cond_2e
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 613
    .local v0, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    if-nez v0, :cond_59

    .line 615
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_59
    move-object v1, v0

    .line 618
    goto :goto_17
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Name;
    .registers 4
    .parameter "obj"

    .prologue
    .line 341
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/X509Name;

    if-eqz v0, :cond_a

    .line 343
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/X509Name;

    .end local p0
    move-object v0, p0

    .line 347
    :goto_9
    return-object v0

    .line 345
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 347
    new-instance v0, Lorg/bouncycastle/asn1/x509/X509Name;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 350
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509Name;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 335
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 22
    .parameter "_obj"

    .prologue
    .line 883
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_9

    .line 885
    const/16 v18, 0x1

    .line 1003
    :goto_8
    return v18

    .line 888
    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;

    move/from16 v18, v0

    if-nez v18, :cond_1c

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move/from16 v18, v0

    if-nez v18, :cond_1c

    .line 890
    const/16 v18, 0x0

    goto :goto_8

    .line 893
    :cond_1c
    move-object/from16 v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/DEREncodable;

    move-object v2, v0

    invoke-interface {v2}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v12

    .line 895
    .local v12, derO:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/x509/X509Name;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_35

    .line 897
    const/16 v18, 0x1

    goto :goto_8

    .line 900
    :cond_35
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;

    move/from16 v18, v0

    if-nez v18, :cond_40

    .line 902
    const/16 v18, 0x0

    goto :goto_8

    .line 905
    :cond_40
    move-object/from16 v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/x509/X509Name;

    move-object v8, v0

    .line 908
    .local v8, _oxn:Lorg/bouncycastle/asn1/x509/X509Name;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v7

    .line 910
    .local v7, _orderingSize:I
    move-object v0, v8

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v18

    move v0, v7

    move/from16 v1, v18

    if-eq v0, v1, :cond_60

    .line 912
    const/16 v18, 0x0

    goto :goto_8

    .line 916
    :cond_60
    new-array v3, v7, [Z

    .line 918
    .local v3, _indexes:[Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_63
    if-ge v13, v7, :cond_16b

    .line 920
    const/4 v2, 0x0

    .line 922
    .local v2, _found:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    .line 923
    .local v6, _oid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v9

    .line 926
    .local v9, _val:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, j:I
    :goto_85
    if-ge v14, v7, :cond_cc

    .line 928
    aget-boolean v18, v3, v14

    if-eqz v18, :cond_8e

    .line 926
    :cond_8b
    add-int/lit8 v14, v14, 0x1

    goto :goto_85

    .line 934
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 935
    .local v4, _oOID:Ljava/lang/String;
    move-object v0, v8

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 938
    .local v5, _oVal:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8b

    .line 940
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 941
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 942
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d2

    .line 944
    const/16 v18, 0x1

    aput-boolean v18, v3, v14

    .line 945
    const/4 v2, 0x1

    .line 997
    .end local v4           #_oOID:Ljava/lang/String;
    .end local v5           #_oVal:Ljava/lang/String;
    :cond_cc
    :goto_cc
    if-nez v2, :cond_167

    .line 999
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 950
    .restart local v4       #_oOID:Ljava/lang/String;
    .restart local v5       #_oVal:Ljava/lang/String;
    :cond_d2
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 951
    .local v16, v1:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 953
    .local v17, v2:Ljava/lang/StringBuffer;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_117

    .line 955
    const/16 v18, 0x0

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 957
    .local v10, c1:C
    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 959
    const/4 v15, 0x1

    .local v15, k:I
    :goto_f2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_117

    .line 961
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 962
    .local v11, c2:C
    const/16 v18, 0x20

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_10d

    const/16 v18, 0x20

    move v0, v11

    move/from16 v1, v18

    if-eq v0, v1, :cond_113

    .line 964
    :cond_10d
    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 966
    :cond_113
    move v10, v11

    .line 959
    add-int/lit8 v15, v15, 0x1

    goto :goto_f2

    .line 970
    .end local v10           #c1:C
    .end local v11           #c2:C
    .end local v15           #k:I
    :cond_117
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_152

    .line 972
    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 974
    .restart local v10       #c1:C
    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 976
    const/4 v15, 0x1

    .restart local v15       #k:I
    :goto_12d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_152

    .line 978
    invoke-virtual {v5, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 979
    .restart local v11       #c2:C
    const/16 v18, 0x20

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_148

    const/16 v18, 0x20

    move v0, v11

    move/from16 v1, v18

    if-eq v0, v1, :cond_14e

    .line 981
    :cond_148
    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 983
    :cond_14e
    move v10, v11

    .line 976
    add-int/lit8 v15, v15, 0x1

    goto :goto_12d

    .line 987
    .end local v10           #c1:C
    .end local v11           #c2:C
    .end local v15           #k:I
    :cond_152
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8b

    .line 989
    const/16 v18, 0x1

    aput-boolean v18, v3, v14

    .line 990
    const/4 v2, 0x1

    .line 991
    goto/16 :goto_cc

    .line 918
    .end local v4           #_oOID:Ljava/lang/String;
    .end local v5           #_oVal:Ljava/lang/String;
    .end local v16           #v1:Ljava/lang/StringBuffer;
    .end local v17           #v2:Ljava/lang/StringBuffer;
    :cond_167
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_63

    .line 1003
    .end local v2           #_found:Z
    .end local v6           #_oid:Ljava/lang/String;
    .end local v9           #_val:Ljava/lang/String;
    .end local v14           #j:I
    :cond_16b
    const/16 v18, 0x1

    goto/16 :goto_8
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .registers 19
    .parameter "_obj"
    .parameter "inOrder"

    .prologue
    .line 781
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_8

    .line 783
    const/4 v14, 0x1

    .line 875
    :goto_7
    return v14

    .line 786
    :cond_8
    if-nez p2, :cond_f

    .line 788
    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/asn1/x509/X509Name;->equals(Ljava/lang/Object;)Z

    move-result v14

    goto :goto_7

    .line 791
    :cond_f
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;

    move v14, v0

    if-nez v14, :cond_18

    .line 793
    const/4 v14, 0x0

    goto :goto_7

    .line 796
    :cond_18
    move-object/from16 v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/x509/X509Name;

    move-object v6, v0

    .line 798
    .local v6, _oxn:Lorg/bouncycastle/asn1/x509/X509Name;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v5

    .line 800
    .local v5, _orderingSize:I
    iget-object v14, v6, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v14

    if-eq v5, v14, :cond_30

    .line 802
    const/4 v14, 0x0

    goto :goto_7

    .line 806
    :cond_30
    const/4 v10, 0x0

    .local v10, i:I
    :goto_31
    if-ge v10, v5, :cond_e6

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object v14, v0

    invoke-virtual {v14, v10}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 810
    .local v4, _oid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    move-object v14, v0

    invoke-virtual {v14, v10}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 812
    .local v7, _val:Ljava/lang/String;
    iget-object v14, v6, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v14, v10}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, _oOID:Ljava/lang/String;
    iget-object v14, v6, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v14, v10}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 816
    .local v3, _oVal:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e3

    .line 818
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 819
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 820
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_78

    .line 806
    :cond_75
    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    .line 826
    :cond_78
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 827
    .local v12, v1:Ljava/lang/StringBuffer;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 829
    .local v13, v2:Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_aa

    .line 831
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 833
    .local v8, c1:C
    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 835
    const/4 v11, 0x1

    .local v11, k:I
    :goto_91
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v11, v14, :cond_aa

    .line 837
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 838
    .local v9, c2:C
    const/16 v14, 0x20

    if-ne v8, v14, :cond_a3

    const/16 v14, 0x20

    if-eq v9, v14, :cond_a6

    .line 840
    :cond_a3
    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 842
    :cond_a6
    move v8, v9

    .line 835
    add-int/lit8 v11, v11, 0x1

    goto :goto_91

    .line 846
    .end local v8           #c1:C
    .end local v9           #c2:C
    .end local v11           #k:I
    :cond_aa
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_d2

    .line 848
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 850
    .restart local v8       #c1:C
    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 852
    const/4 v11, 0x1

    .restart local v11       #k:I
    :goto_b9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v11, v14, :cond_d2

    .line 854
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 855
    .restart local v9       #c2:C
    const/16 v14, 0x20

    if-ne v8, v14, :cond_cb

    const/16 v14, 0x20

    if-eq v9, v14, :cond_ce

    .line 857
    :cond_cb
    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 859
    :cond_ce
    move v8, v9

    .line 852
    add-int/lit8 v11, v11, 0x1

    goto :goto_b9

    .line 863
    .end local v8           #c1:C
    .end local v9           #c2:C
    .end local v11           #k:I
    :cond_d2
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_75

    .line 865
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 871
    .end local v12           #v1:Ljava/lang/StringBuffer;
    .end local v13           #v2:Ljava/lang/StringBuffer;
    :cond_e3
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 875
    .end local v2           #_oOID:Ljava/lang/String;
    .end local v3           #_oVal:Ljava/lang/String;
    .end local v4           #_oid:Ljava/lang/String;
    .end local v7           #_val:Ljava/lang/String;
    :cond_e6
    const/4 v14, 0x1

    goto/16 :goto_7
.end method

.method public getOIDs()Ljava/util/Vector;
    .registers 5

    .prologue
    .line 699
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 700
    .local v2, v:Ljava/util/Vector;
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v1

    .line 702
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_1a

    .line 704
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 707
    :cond_1a
    return-object v2
.end method

.method public getValues()Ljava/util/Vector;
    .registers 5

    .prologue
    .line 718
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 719
    .local v2, v:Ljava/util/Vector;
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v1

    .line 721
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_1a

    .line 723
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 726
    :cond_1a
    return-object v2
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 1008
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/X509Name;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1009
    .local v2, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 1010
    .local v0, e:Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 1012
    .local v1, hashCode:I
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1014
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    goto :goto_b

    .line 1017
    :cond_1b
    return v1
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 10

    .prologue
    .line 732
    iget-object v8, p0, Lorg/bouncycastle/asn1/x509/X509Name;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v8, :cond_70

    .line 735
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 736
    .local v7, vec:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 737
    .local v3, sVec:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .line 738
    .local v1, lstOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    iget-object v8, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v4

    .line 740
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-eq v0, v4, :cond_61

    .line 742
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 743
    .local v6, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v8, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v8, v0}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    .line 745
    .local v2, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v6, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 747
    iget-object v8, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v8, v0}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 749
    .local v5, str:Ljava/lang/String;
    iget-object v8, p0, Lorg/bouncycastle/asn1/x509/X509Name;->converter:Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    invoke-virtual {v8, v2, v5}, Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;->getConvertedValue(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 751
    if-eqz v1, :cond_3f

    iget-object v8, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v8, v0}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getAdded(I)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 753
    :cond_3f
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v3, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 763
    :goto_47
    move-object v1, v2

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 757
    :cond_4b
    new-instance v8, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 758
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v3           #sVec:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 760
    .restart local v3       #sVec:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v3, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_47

    .line 766
    .end local v2           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v5           #str:Ljava/lang/String;
    .end local v6           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_61
    new-instance v8, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 768
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v8, p0, Lorg/bouncycastle/asn1/x509/X509Name;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 772
    .end local v0           #i:I
    .end local v1           #lstOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v3           #sVec:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4           #size:I
    .end local v7           #vec:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_70
    iget-object v8, p0, Lorg/bouncycastle/asn1/x509/X509Name;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1156
    sget-boolean v0, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/asn1/x509/X509Name;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(ZLjava/util/Hashtable;)Ljava/lang/String;
    .registers 10
    .parameter "reverse"
    .parameter "oidSymbols"

    .prologue
    const/16 v6, 0x2c

    const/16 v5, 0x2b

    .line 1080
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1081
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 1083
    .local v1, first:Z
    if-eqz p1, :cond_3e

    .line 1086
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_15
    if-ltz v2, :cond_6c

    .line 1088
    if-eqz v1, :cond_2c

    .line 1090
    const/4 v1, 0x0

    .line 1104
    :goto_1a
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, p2, v3, v4}, Lorg/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 1086
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 1094
    :cond_2c
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getAdded(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1096
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 1100
    :cond_3a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 1113
    .end local v2           #i:I
    :cond_3e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3f
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 1115
    if-eqz v1, :cond_5c

    .line 1117
    const/4 v1, 0x0

    .line 1131
    :goto_4a
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, p2, v3, v4}, Lorg/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 1113
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 1121
    :cond_5c
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Name;->elems:Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getAdded(I)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1123
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 1127
    :cond_68
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 1138
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
