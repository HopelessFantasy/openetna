.class public final Lcom/android/browser/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final READ_BROWSER_COOKIES:Ljava/lang/String; = "com.android.browser.permission.READ_BROWSER_COOKIES"

.field public static final READ_HISTORY_BOOKMARKS:Ljava/lang/String; = "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

.field public static final RECEIVE_WAP_SERVICE:Ljava/lang/String; = "android.permission.RECEIVE_WAP_SERVICE"

.field public static final WRITE_HISTORY_BOOKMARKS:Ljava/lang/String; = "com.android.browser.permission.WRITE_HISTORY_BOOKMARKS"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
