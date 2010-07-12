.class public Lcom/google/android/net/UrlRules;
.super Ljava/lang/Object;
.source "UrlRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/net/UrlRules$Rule;,
        Lcom/google/android/net/UrlRules$RuleFormatException;
    }
.end annotation


# static fields
.field private static final PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern;

.field private static final RULE_PATTERN:Ljava/util/regex/Pattern;

.field private static sCachedDigest:Ljava/lang/String;

.field private static sCachedRules:Lcom/google/android/net/UrlRules;


# instance fields
.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mRules:[Lcom/google/android/net/UrlRules$Rule;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 135
    new-instance v0, Lcom/google/android/net/UrlRules;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/net/UrlRules$Rule;

    invoke-direct {v0, v1}, Lcom/google/android/net/UrlRules;-><init>([Lcom/google/android/net/UrlRules$Rule;)V

    sput-object v0, Lcom/google/android/net/UrlRules;->sCachedRules:Lcom/google/android/net/UrlRules;

    .line 137
    const-string v0, " +"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/net/UrlRules;->PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern;

    .line 138
    const-string v0, "\\W"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/net/UrlRules;->RULE_PATTERN:Ljava/util/regex/Pattern;

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/net/UrlRules;->sCachedDigest:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/net/UrlRules$Rule;)V
    .registers 6
    .parameter "rules"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, pattern:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v2, p1

    if-ge v0, v2, :cond_2e

    .line 161
    if-lez v0, :cond_18

    const-string v2, ")|("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_18
    sget-object v2, Lcom/google/android/net/UrlRules;->RULE_PATTERN:Ljava/util/regex/Pattern;

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/google/android/net/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "\\\\$0"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 164
    :cond_2e
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/net/UrlRules;->mPattern:Ljava/util/regex/Pattern;

    .line 165
    iput-object p1, p0, Lcom/google/android/net/UrlRules;->mRules:[Lcom/google/android/net/UrlRules$Rule;

    .line 166
    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/net/UrlRules;->PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static declared-synchronized getRules(Landroid/content/ContentResolver;)Lcom/google/android/net/UrlRules;
    .registers 14
    .parameter "resolver"

    .prologue
    const-string v0, "name"

    .line 191
    const-class v12, Lcom/google/android/net/UrlRules;

    monitor-enter v12

    :try_start_5
    const-string v0, "digest"

    invoke-static {p0, v0}, Landroid/provider/Settings$Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, digest:Ljava/lang/String;
    sget-object v0, Lcom/google/android/net/UrlRules;->sCachedDigest:Ljava/lang/String;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/google/android/net/UrlRules;->sCachedDigest:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 195
    sget-object v0, Lcom/google/android/net/UrlRules;->sCachedRules:Lcom/google/android/net/UrlRules;
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_77

    .line 227
    .end local p0
    :goto_19
    monitor-exit v12

    return-object v0

    .line 199
    .restart local p0
    :cond_1b
    :try_start_1b
    sget-object v1, Landroid/provider/Settings$Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name like \"url:%\""

    const/4 v4, 0x0

    const-string v5, "name"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_77

    move-result-object v6

    .line 207
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_34
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v10, rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/net/UrlRules$Rule;>;"
    :cond_39
    :goto_39
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_72

    move-result v0

    if-eqz v0, :cond_7a

    .line 210
    const/4 v0, 0x0

    :try_start_40
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 211
    .local v9, name:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, value:Ljava/lang/String;
    if-eqz v11, :cond_39

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_39

    .line 213
    new-instance v0, Lcom/google/android/net/UrlRules$Rule;

    invoke-direct {v0, v9, v11}, Lcom/google/android/net/UrlRules$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_40 .. :try_end_5e} :catchall_72
    .catch Lcom/google/android/net/UrlRules$RuleFormatException; {:try_start_40 .. :try_end_5e} :catch_5f

    goto :goto_39

    .line 214
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :catch_5f
    move-exception v0

    move-object v8, v0

    .line 216
    .local v8, e:Lcom/google/android/net/UrlRules$RuleFormatException;
    :try_start_61
    const-string v0, "UrlRules"

    const-string v1, "Invalid rule from Gservices"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    sget-object v0, Landroid/provider/Checkin$Events$Tag;->GSERVICES_ERROR:Landroid/provider/Checkin$Events$Tag;

    invoke-virtual {v8}, Lcom/google/android/net/UrlRules$RuleFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_72

    goto :goto_39

    .line 224
    .end local v8           #e:Lcom/google/android/net/UrlRules$RuleFormatException;
    .end local v10           #rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/net/UrlRules$Rule;>;"
    .end local p0
    :catchall_72
    move-exception v0

    :try_start_73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_77

    .line 191
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #digest:Ljava/lang/String;
    :catchall_77
    move-exception v0

    monitor-exit v12

    throw v0

    .line 221
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #digest:Ljava/lang/String;
    .restart local v10       #rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/net/UrlRules$Rule;>;"
    .restart local p0
    :cond_7a
    :try_start_7a
    new-instance v0, Lcom/google/android/net/UrlRules;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/net/UrlRules$Rule;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/google/android/net/UrlRules$Rule;

    invoke-direct {v0, p0}, Lcom/google/android/net/UrlRules;-><init>([Lcom/google/android/net/UrlRules$Rule;)V

    sput-object v0, Lcom/google/android/net/UrlRules;->sCachedRules:Lcom/google/android/net/UrlRules;

    .line 222
    sput-object v7, Lcom/google/android/net/UrlRules;->sCachedDigest:Ljava/lang/String;
    :try_end_8f
    .catchall {:try_start_7a .. :try_end_8f} :catchall_72

    .line 224
    :try_start_8f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 227
    sget-object v0, Lcom/google/android/net/UrlRules;->sCachedRules:Lcom/google/android/net/UrlRules;
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_77

    goto :goto_19
.end method


# virtual methods
.method public matchRule(Ljava/lang/String;)Lcom/google/android/net/UrlRules$Rule;
    .registers 5
    .parameter "url"

    .prologue
    .line 174
    iget-object v2, p0, Lcom/google/android/net/UrlRules;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 175
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v2, p0, Lcom/google/android/net/UrlRules;->mRules:[Lcom/google/android/net/UrlRules$Rule;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    .line 177
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 178
    iget-object v2, p0, Lcom/google/android/net/UrlRules;->mRules:[Lcom/google/android/net/UrlRules$Rule;

    aget-object v2, v2, v0

    .line 182
    .end local v0           #i:I
    :goto_1e
    return-object v2

    .line 176
    .restart local v0       #i:I
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 182
    .end local v0           #i:I
    :cond_22
    sget-object v2, Lcom/google/android/net/UrlRules$Rule;->DEFAULT:Lcom/google/android/net/UrlRules$Rule;

    goto :goto_1e
.end method
