.class public Lcom/android/contacts/IconListAdapter$IconListItem;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconListItem"
.end annotation


# instance fields
.field private final mData:Ljava/lang/String;

.field private final mId:I

.field private final mImage:Landroid/graphics/Bitmap;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "_id"
    .parameter "title"
    .parameter "data"
    .parameter "image"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/android/contacts/IconListAdapter$IconListItem;->mId:I

    .line 90
    iput-object p2, p0, Lcom/android/contacts/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/android/contacts/IconListAdapter$IconListItem;->mData:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/android/contacts/IconListAdapter$IconListItem;->mImage:Landroid/graphics/Bitmap;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/IconListAdapter$IconListItem;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/IconListAdapter$IconListItem;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/IconListAdapter$IconListItem;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/IconListAdapter$IconListItem;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/android/contacts/IconListAdapter$IconListItem;->mId:I

    return v0
.end method
