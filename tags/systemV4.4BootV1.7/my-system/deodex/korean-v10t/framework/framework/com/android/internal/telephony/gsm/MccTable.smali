.class public final Lcom/android/internal/telephony/gsm/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/MccTable$MccEntry;
    }
.end annotation


# static fields
.field static table:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/MccTable$MccEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x2

    const-string v6, "us"

    const-string v8, ""

    const-string v9, "en"

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    .line 171
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xca

    const-string v4, "gr"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0xcc

    const-string v2, "nl"

    const-string v4, "Europe/Amsterdam"

    const-string v5, "nl"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xce

    const-string v4, "be"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0xd0

    const-string v2, "fr"

    const-string v4, "Europe/Paris"

    const-string v5, "fr"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xd4

    const-string v4, "mc"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xd5

    const-string v4, "ad"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0xd6

    const-string v2, "es"

    const-string v4, "Europe/Madrid"

    const-string v5, "es"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xd8

    const-string v4, "hu"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xda

    const-string v4, "ba"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xdb

    const-string v4, "hr"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xdc

    const-string v4, "rs"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0xde

    const-string v2, "it"

    const-string v4, "Europe/Rome"

    const-string v5, "it"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0xe1

    const-string v2, "va"

    const-string v4, "Europe/Rome"

    const-string v5, "it"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xe2

    const-string v4, "ro"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0xe4

    const-string v2, "ch"

    const-string v4, "Europe/Zurich"

    const-string v5, "de"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0xe6

    const-string v2, "cz"

    const-string v4, "Europe/Prague"

    const-string v5, "cs"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xe7

    const-string v4, "sk"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0xe8

    const-string v2, "at"

    const-string v4, "Europe/Vienna"

    const-string v5, "de"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0xea

    const-string v2, "gb"

    const-string v4, "Europe/London"

    const-string v5, "en"

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0xeb

    const-string v2, "gb"

    const-string v4, "Europe/London"

    const-string v5, "en"

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xee

    const-string v4, "dk"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xf0

    const-string v4, "se"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xf2

    const-string v4, "no"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xf4

    const-string v4, "fi"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xf6

    const-string v4, "lt"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xf7

    const-string v4, "lv"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xf8

    const-string v4, "ee"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xfa

    const-string v4, "ru"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0xff

    const-string v4, "ua"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x101

    const-string v4, "by"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x103

    const-string v4, "md"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x104

    const-string v4, "pl"

    const-string v5, "Europe/Warsaw"

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0x106

    const-string v2, "de"

    const-string v4, "Europe/Berlin"

    const-string v5, "de"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x10a

    const-string v4, "gi"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x10c

    const-string v4, "pt"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x10e

    const-string v4, "lu"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v10, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0x110

    const-string v2, "ie"

    const-string v4, "Europe/Dublin"

    const-string v5, "en"

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x112

    const-string v4, "is"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x114

    const-string v4, "al"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x116

    const-string v4, "mt"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x118

    const-string v4, "cy"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x11a

    const-string v4, "ge"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x11b

    const-string v4, "am"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x11c

    const-string v4, "bg"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x11e

    const-string v4, "tr"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x120

    const-string v4, "fo"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x122

    const-string v4, "gl"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x124

    const-string v4, "sm"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x125

    const-string v4, "sl"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x126

    const-string v4, "mk"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x127

    const-string v4, "li"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x12e

    const-string v4, "ca"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x134

    const-string v4, "pm"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v5, 0x136

    const-string v1, "us"

    const-string v1, ""

    const-string v1, "en"

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v5, 0x137

    const-string v1, "us"

    const-string v1, ""

    const-string v1, "en"

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v5, 0x138

    const-string v1, "us"

    const-string v1, ""

    const-string v1, "en"

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v5, 0x139

    const-string v1, "us"

    const-string v1, ""

    const-string v1, "en"

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v5, 0x13a

    const-string v1, "us"

    const-string v1, ""

    const-string v1, "en"

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v5, 0x13b

    const-string v1, "us"

    const-string v1, ""

    const-string v1, "en"

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v5, 0x13c

    const-string v1, "us"

    const-string v1, ""

    const-string v1, "en"

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x14a

    const-string v4, "pr"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x14c

    const-string v4, "vi"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x14e

    const-string v4, "mx"

    invoke-direct {v1, v2, v4, v7}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x152

    const-string v4, "jm"

    invoke-direct {v1, v2, v4, v7}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x154

    const-string v4, "gp"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x156

    const-string v4, "bb"

    invoke-direct {v1, v2, v4, v7}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x158

    const-string v4, "ag"

    invoke-direct {v1, v2, v4, v7}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x15a

    const-string v4, "ky"

    invoke-direct {v1, v2, v4, v7}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x15c

    const-string v4, "vg"

    invoke-direct {v1, v2, v4, v7}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x15e

    const-string v4, "bm"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x160

    const-string v4, "gd"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x162

    const-string v4, "ms"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x164

    const-string v4, "kn"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x166

    const-string v4, "lc"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x168

    const-string v4, "vc"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x16a

    const-string v4, "nl"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x16b

    const-string v4, "aw"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x16c

    const-string v4, "bs"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x16d

    const-string v4, "ai"

    invoke-direct {v1, v2, v4, v7}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x16e

    const-string v4, "dm"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x170

    const-string v4, "cu"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x172

    const-string v4, "do"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x174

    const-string v4, "ht"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x176

    const-string v4, "tt"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x178

    const-string v4, "tc"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x190

    const-string v4, "az"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x191

    const-string v4, "kz"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x192

    const-string v4, "bt"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x194

    const-string v4, "in"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x195

    const-string v4, "in"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x19a

    const-string v4, "pk"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x19c

    const-string v4, "af"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x19d

    const-string v4, "lk"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x19e

    const-string v4, "mm"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x19f

    const-string v4, "lb"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1a0

    const-string v4, "jo"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1a1

    const-string v4, "sy"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1a2

    const-string v4, "iq"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1a3

    const-string v4, "kw"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1a4

    const-string v4, "sa"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1a5

    const-string v4, "ye"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1a6

    const-string v4, "om"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1a8

    const-string v4, "ae"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1a9

    const-string v4, "il"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1aa

    const-string v4, "bh"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1ab

    const-string v4, "qa"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1ac

    const-string v4, "mn"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1ad

    const-string v4, "np"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1ae

    const-string v4, "ae"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1af

    const-string v4, "ae"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1b0

    const-string v4, "ir"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1b2

    const-string v4, "uz"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1b4

    const-string v4, "tj"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1b5

    const-string v4, "kg"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1b6

    const-string v4, "tm"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v6, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0x1b8

    const-string v2, "jp"

    const-string v4, "Asia/Tokyo"

    const-string v5, "ja"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v6, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0x1b9

    const-string v2, "jp"

    const-string v4, "Asia/Tokyo"

    const-string v5, "ja"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1c2

    const-string v4, "kr"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1c4

    const-string v4, "vn"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1c6

    const-string v4, "hk"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1c7

    const-string v4, "mo"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1c8

    const-string v4, "kh"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1c9

    const-string v4, "la"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1cc

    const-string v4, "cn"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1cd

    const-string v4, "cn"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1d2

    const-string v4, "tw"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1d3

    const-string v4, "kp"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1d6

    const-string v4, "bd"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1d8

    const-string v4, "mv"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1f6

    const-string v4, "my"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v6, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0x1f9

    const-string v2, "au"

    const-string v4, "Australia/Sydney"

    const-string v5, "en"

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x1fe

    const-string v4, "id"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x202

    const-string v4, "tl"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x203

    const-string v4, "ph"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x208

    const-string v4, "th"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v6, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0x20d

    const-string v2, "sg"

    const-string v4, "Singapore"

    const-string v5, "en"

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x210

    const-string v4, "bn"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v6, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0x212

    const-string v2, "nz"

    const-string v4, "Pacific/Auckland"

    const-string v5, "en"

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x216

    const-string v4, "mp"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x217

    const-string v4, "gu"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x218

    const-string v4, "nr"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x219

    const-string v4, "pg"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x21b

    const-string v4, "to"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x21c

    const-string v4, "sb"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x21d

    const-string v4, "vu"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x21e

    const-string v4, "fj"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x21f

    const-string v4, "wf"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x220

    const-string v4, "as"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x221

    const-string v4, "ki"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x222

    const-string v4, "nc"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x223

    const-string v4, "pf"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x224

    const-string v4, "ck"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x225

    const-string v4, "ws"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x226

    const-string v4, "fm"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x227

    const-string v4, "mh"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x228

    const-string v4, "pw"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x25a

    const-string v4, "eg"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x25b

    const-string v4, "dz"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x25c

    const-string v4, "ma"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x25d

    const-string v4, "tn"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x25e

    const-string v4, "ly"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x25f

    const-string v4, "gm"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x260

    const-string v4, "sn"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x261

    const-string v4, "mr"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x262

    const-string v4, "ml"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x263

    const-string v4, "gn"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x264

    const-string v4, "ci"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x265

    const-string v4, "bf"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x266

    const-string v4, "ne"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x267

    const-string v4, "tg"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x268

    const-string v4, "bj"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x269

    const-string v4, "mu"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x26a

    const-string v4, "lr"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x26b

    const-string v4, "sl"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x26c

    const-string v4, "gh"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x26d

    const-string v4, "ng"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x26e

    const-string v4, "td"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x26f

    const-string v4, "cf"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x270

    const-string v4, "cm"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x271

    const-string v4, "cv"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x272

    const-string v4, "st"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x273

    const-string v4, "gq"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x274

    const-string v4, "ga"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x275

    const-string v4, "cg"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x276

    const-string v4, "cg"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x277

    const-string v4, "ao"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x278

    const-string v4, "gw"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x279

    const-string v4, "sc"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x27a

    const-string v4, "sd"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x27b

    const-string v4, "rw"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x27c

    const-string v4, "et"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x27d

    const-string v4, "so"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x27e

    const-string v4, "dj"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x27f

    const-string v4, "ke"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x280

    const-string v4, "tz"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x281

    const-string v4, "ug"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x282

    const-string v4, "bi"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x283

    const-string v4, "mz"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x285

    const-string v4, "zm"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x286

    const-string v4, "mg"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x287

    const-string v4, "re"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x288

    const-string v4, "zw"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x289

    const-string v4, "na"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x28a

    const-string v4, "mw"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x28b

    const-string v4, "ls"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x28c

    const-string v4, "bw"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x28d

    const-string v4, "sz"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x28e

    const-string v4, "km"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v6, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v1, 0x28f

    const-string v2, "za"

    const-string v4, "Africa/Johannesburg"

    const-string v5, "en"

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x291

    const-string v4, "er"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2be

    const-string v4, "bz"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2c0

    const-string v4, "gt"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2c2

    const-string v4, "sv"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2c4

    const-string v4, "hn"

    invoke-direct {v1, v2, v4, v7}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2c6

    const-string v4, "ni"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2c8

    const-string v4, "cr"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2ca

    const-string v4, "pa"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2cc

    const-string v4, "pe"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2d2

    const-string v4, "ar"

    invoke-direct {v1, v2, v4, v7}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2d4

    const-string v4, "br"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2da

    const-string v4, "cl"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2dc

    const-string v4, "co"

    invoke-direct {v1, v2, v4, v7}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2de

    const-string v4, "ve"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2e0

    const-string v4, "bo"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2e2

    const-string v4, "gy"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2e4

    const-string v4, "ec"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2e6

    const-string v4, "gf"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2e8

    const-string v4, "py"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2ea

    const-string v4, "sr"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2ec

    const-string v4, "uy"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/16 v2, 0x2ee

    const-string v4, "fk"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 405
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .registers 3
    .parameter "mcc"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    move-result-object v0

    .line 108
    .local v0, entry:Lcom/android/internal/telephony/gsm/MccTable$MccEntry;
    if-nez v0, :cond_9

    .line 109
    const-string v1, ""

    .line 111
    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->iso:Ljava/lang/String;

    goto :goto_8
.end method

.method static defaultLanguageForMcc(I)Ljava/lang/String;
    .registers 3
    .parameter "mcc"

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    move-result-object v0

    .line 125
    .local v0, entry:Lcom/android/internal/telephony/gsm/MccTable$MccEntry;
    if-nez v0, :cond_8

    .line 126
    const/4 v1, 0x0

    .line 128
    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->language:Ljava/lang/String;

    goto :goto_7
.end method

.method static defaultTimeZoneForMcc(I)Ljava/lang/String;
    .registers 3
    .parameter "mcc"

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    move-result-object v0

    .line 89
    .local v0, entry:Lcom/android/internal/telephony/gsm/MccTable$MccEntry;
    if-nez v0, :cond_8

    .line 90
    const/4 v1, 0x0

    .line 92
    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->timezone:Ljava/lang/String;

    goto :goto_7
.end method

.method private static entryForMcc(I)Lcom/android/internal/telephony/gsm/MccTable$MccEntry;
    .registers 5
    .parameter "mcc"

    .prologue
    const/4 v3, 0x0

    .line 68
    new-instance v1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    .line 70
    .local v1, m:Lcom/android/internal/telephony/gsm/MccTable$MccEntry;
    sget-object v2, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 72
    .local v0, index:I
    if-gez v0, :cond_11

    move-object v2, v3

    .line 75
    .end local p0
    :goto_10
    return-object v2

    .restart local p0
    :cond_11
    sget-object v2, Lcom/android/internal/telephony/gsm/MccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    move-object v2, p0

    goto :goto_10
.end method

.method public static smallestDigitsMccForMnc(I)I
    .registers 3
    .parameter "mcc"

    .prologue
    .line 142
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    move-result-object v0

    .line 144
    .local v0, entry:Lcom/android/internal/telephony/gsm/MccTable$MccEntry;
    if-nez v0, :cond_8

    .line 145
    const/4 v1, 0x2

    .line 147
    :goto_7
    return v1

    :cond_8
    iget v1, v0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->smallestDigitsMnc:I

    goto :goto_7
.end method
