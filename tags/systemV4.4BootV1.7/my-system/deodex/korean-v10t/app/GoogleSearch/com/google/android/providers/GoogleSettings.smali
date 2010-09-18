.class public final Lcom/google/android/providers/GoogleSettings;
.super Ljava/lang/Object;
.source "GoogleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/providers/GoogleSettings$Partner;,
        Lcom/google/android/providers/GoogleSettings$NameValueCache;,
        Lcom/google/android/providers/GoogleSettings$NameValueTable;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.settings"

.field private static final TAG:Ljava/lang/String; = "GoogleSettings"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method
