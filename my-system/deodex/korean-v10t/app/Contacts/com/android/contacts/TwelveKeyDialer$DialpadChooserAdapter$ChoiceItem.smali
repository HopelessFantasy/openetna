.class Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChoiceItem"
.end annotation


# instance fields
.field icon:Landroid/graphics/Bitmap;

.field id:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 4
    .parameter "s"
    .parameter "b"
    .parameter "i"

    .prologue
    .line 1665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    .line 1667
    iput-object p2, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    .line 1668
    iput p3, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 1669
    return-void
.end method
