.class public Landroid/provider/Contacts$People$Extensions;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$ExtensionsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts$People;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extensions"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "extensions"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final PERSON_ID:Ljava/lang/String; = "person"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
