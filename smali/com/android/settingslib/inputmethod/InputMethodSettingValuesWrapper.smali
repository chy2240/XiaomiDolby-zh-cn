.class public Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
.super Ljava/lang/Object;
.source "InputMethodSettingValuesWrapper.java"


# static fields
.field private static sInstanceMap:Landroid/util/SparseArray;

.field private static final sInstanceMapLock:Ljava/lang/Object;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mMethodList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstanceMapLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstanceMap:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 87
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 88
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
    .locals 3

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 66
    sget-object v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstanceMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 68
    new-instance v2, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-direct {v2, p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;-><init>(Landroid/content/Context;)V

    .line 69
    sget-object p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 73
    :cond_0
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 74
    sget-object p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    monitor-exit v1

    return-object p0

    .line 77
    :cond_1
    new-instance v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-direct {v0, p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;-><init>(Landroid/content/Context;)V

    .line 78
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v2, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    monitor-exit v1

    return-object v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public refreshAllInputMethodAndSubtypes()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 94
    invoke-virtual {v1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodListAsUser(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 97
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isVirtualDeviceOnly()Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
