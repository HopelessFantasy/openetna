.class Ljava/io/InputStreamReader$HistoricalNamesUtil;
.super Ljava/lang/Object;
.source "InputStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/InputStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HistoricalNamesUtil"
.end annotation


# static fields
.field private static historicalNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-string v3, "ISO2022CN"

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    .line 200
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "Big5-HKSCS"

    const-string v2, "Big5_HKSCS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "EUC-JP"

    const-string v2, "EUC_JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "EUC-KR"

    const-string v2, "EUC_KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "GB2312"

    const-string v2, "EUC_CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM-Thai"

    const-string v2, "Cp838"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM00858"

    const-string v2, "Cp858"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01140"

    const-string v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01141"

    const-string v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01142"

    const-string v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01143"

    const-string v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01144"

    const-string v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01145"

    const-string v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01146"

    const-string v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01147"

    const-string v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01148"

    const-string v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01149"

    const-string v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM037"

    const-string v2, "Cp037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM1026"

    const-string v2, "Cp1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM1047"

    const-string v2, "Cp1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM273"

    const-string v2, "Cp273"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM277"

    const-string v2, "Cp277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM278"

    const-string v2, "Cp278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM280"

    const-string v2, "Cp280"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM284"

    const-string v2, "Cp284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM285"

    const-string v2, "Cp285"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM297"

    const-string v2, "Cp297"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM420"

    const-string v2, "Cp420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM424"

    const-string v2, "Cp424"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM437"

    const-string v2, "Cp437"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM500"

    const-string v2, "Cp500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM775"

    const-string v2, "Cp775"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM850"

    const-string v2, "Cp850"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM852"

    const-string v2, "Cp852"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM855"

    const-string v2, "Cp855"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM857"

    const-string v2, "Cp857"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM860"

    const-string v2, "Cp860"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM861"

    const-string v2, "Cp861"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM862"

    const-string v2, "Cp862"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM863"

    const-string v2, "Cp863"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM864"

    const-string v2, "Cp864"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM865"

    const-string v2, "Cp865"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM866"

    const-string v2, "Cp866"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM868"

    const-string v2, "Cp868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM869"

    const-string v2, "Cp869"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM870"

    const-string v2, "Cp870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM871"

    const-string v2, "Cp871"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM918"

    const-string v2, "Cp918"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-2022-CN"

    const-string v2, "ISO2022CN"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-2022-JP"

    const-string v2, "ISO2022JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-2022-KR"

    const-string v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-13"

    const-string v2, "ISO8859_13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-15"

    const-string v2, "ISO8859_15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-5"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-6"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-7"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-8"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-9"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "KOI8-R"

    const-string v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "Shift_JIS"

    const-string v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "TIS-620"

    const-string v2, "TIS620"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "US-ASCII"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "UTF-16BE"

    const-string v2, "UnicodeBigUnmarked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "UTF-16LE"

    const-string v2, "UnicodeLittleUnmarked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "UTF-8"

    const-string v2, "UTF8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1250"

    const-string v2, "Cp1250"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1251"

    const-string v2, "Cp1251"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1252"

    const-string v2, "Cp1252"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1253"

    const-string v2, "Cp1253"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1254"

    const-string v2, "Cp1254"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1255"

    const-string v2, "Cp1255"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1256"

    const-string v2, "Cp1256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1257"

    const-string v2, "Cp1257"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1258"

    const-string v2, "Cp1258"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-31j"

    const-string v2, "MS932"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-Big5-Solaris"

    const-string v2, "Big5_Solaris"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-euc-jp-linux"

    const-string v2, "EUC_JP_LINUX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-EUC-TW"

    const-string v2, "EUC_TW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-eucJP-Open"

    const-string v2, "EUC_JP_Solaris"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1006"

    const-string v2, "Cp1006"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1025"

    const-string v2, "Cp1025"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1046"

    const-string v2, "Cp1046"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1097"

    const-string v2, "Cp1097"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1098"

    const-string v2, "Cp1098"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1112"

    const-string v2, "Cp1112"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1122"

    const-string v2, "Cp1122"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1123"

    const-string v2, "Cp1123"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1124"

    const-string v2, "Cp1124"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1381"

    const-string v2, "Cp1381"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1383"

    const-string v2, "Cp1383"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM33722"

    const-string v2, "Cp33722"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM737"

    const-string v2, "Cp737"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM856"

    const-string v2, "Cp856"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM874"

    const-string v2, "Cp874"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM875"

    const-string v2, "Cp875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM921"

    const-string v2, "Cp921"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM922"

    const-string v2, "Cp922"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM930"

    const-string v2, "Cp930"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM933"

    const-string v2, "Cp933"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM935"

    const-string v2, "Cp935"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM937"

    const-string v2, "Cp937"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM939"

    const-string v2, "Cp939"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM942"

    const-string v2, "Cp942"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM942C"

    const-string v2, "Cp942C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM943"

    const-string v2, "Cp943"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM943C"

    const-string v2, "Cp943C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM948"

    const-string v2, "Cp948"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM949"

    const-string v2, "Cp949"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM949C"

    const-string v2, "Cp949C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM950"

    const-string v2, "Cp950"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM964"

    const-string v2, "Cp964"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM970"

    const-string v2, "Cp970"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-ISCII91"

    const-string v2, "ISCII91"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-ISO-2022-CN-CNS"

    const-string v2, "ISO2022CN"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-ISO-2022-CN-GB"

    const-string v2, "ISO2022CN"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-JISAutoDetect"

    const-string v2, "JISAutoDetect"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacArabic"

    const-string v2, "MacArabic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacCentralEurope"

    const-string v2, "MacCentralEurope"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacCroatian"

    const-string v2, "MacCroatian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacCyrillic"

    const-string v2, "MacCyrillic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacDingbat"

    const-string v2, "MacDingbat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacGreek"

    const-string v2, "MacGreek"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacHebrew"

    const-string v2, "MacHebrew"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacIceland"

    const-string v2, "MacIceland"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacRoman"

    const-string v2, "MacRoman"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacRomania"

    const-string v2, "MacRomania"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacSymbol"

    const-string v2, "MacSymbol"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacThai"

    const-string v2, "MacThai"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacTurkish"

    const-string v2, "MacTurkish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacUkraine"

    const-string v2, "MacUkraine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MS950-HKSCS"

    const-string v2, "MS950_HKSCS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-mswin-936"

    const-string v2, "MS936"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-PCK"

    const-string v2, "PCK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-windows-874"

    const-string v2, "MS874"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-windows-949"

    const-string v2, "MS949"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-windows-950"

    const-string v2, "MS950"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHistoricalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "name"

    .prologue
    .line 342
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, p0

    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    sget-object v0, Ljava/io/InputStreamReader$HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_9
.end method
