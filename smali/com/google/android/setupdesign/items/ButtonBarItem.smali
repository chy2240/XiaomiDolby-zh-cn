.class public Lcom/google/android/setupdesign/items/ButtonBarItem;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "ButtonBarItem.java"


# instance fields
.field private final buttons:Ljava/util/ArrayList;

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->buttons:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->visible:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ButtonBarItem;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->visible:Z

    return p0
.end method
