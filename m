Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BFF1903EF
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 04:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j70JaHlfnqoF9dEKU8KR/luIZ75/bPvRdZmSwaaj0iE=; b=KlUhAKpEKZVuCy
	Q9OSmHlGNN7XxQjrOKtCMeEiAP/Oe8rCtc/OJJl6K1Ps80lpSVyTBLPPIr4jX9AdGKU6NuTQgHqPI
	cYSv4yXql5HRI5dyJRyR/R2B44DhUULRgnb2V7dO5GtO7ceGupWgUo/mNeqwRUmgBQkaeEJEr2x5/
	UDMrDAPNrZk4AlEtjViWOR9sCw7kUGbtvXChHCh8TA+FXNyEL69fOYDHmVTdYM8avG1uOgv3w68DD
	/ba6SwN9XUtp91o8imCOFX3LkeIybR+0BKtJtPiqKLDnLj+4UMeBmmsJ/WLa15NLa1Mpo4JrjL7sV
	jlHCZ/5pZJU5wMzHtpZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGaXq-0003Rp-9y; Tue, 24 Mar 2020 03:48:02 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGaXd-0003KC-DM; Tue, 24 Mar 2020 03:47:52 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7CA9B539151FD28DDA6A;
 Tue, 24 Mar 2020 11:47:38 +0800 (CST)
Received: from [10.173.228.124] (10.173.228.124) by smtp.huawei.com
 (10.3.19.202) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 24 Mar
 2020 11:47:36 +0800
Subject: Re: [PATCH 4/4] hugetlbfs: clean up command line processing
To: Mina Almasry <almasrymina@google.com>, Mike Kravetz
 <mike.kravetz@oracle.com>
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-5-mike.kravetz@oracle.com>
 <CAHS8izOhjvNVDXsx_SqP_oUQhCw-i_xcG9hxbvV86fFDeY_SAw@mail.gmail.com>
From: "Longpeng (Mike, Cloud Infrastructure Service Product Dept.)"
 <longpeng2@huawei.com>
Message-ID: <d067c5d1-89b8-a71b-7b71-a8bbbd613efa@huawei.com>
Date: Tue, 24 Mar 2020 11:47:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAHS8izOhjvNVDXsx_SqP_oUQhCw-i_xcG9hxbvV86fFDeY_SAw@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.173.228.124]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_204749_796668_22326B25 
X-CRM114-Status: GOOD (  30.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Linux-MM <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Christian
 Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>, Benjamin
 Herrenschmidt <benh@kernel.crashing.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 open list <linux-kernel@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S . Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2020/3/24 8:43, Mina Almasry wrote:
> On Wed, Mar 18, 2020 at 3:07 PM Mike Kravetz <mike.kravetz@oracle.com> wrote:
>>
>> With all hugetlb page processing done in a single file clean up code.
> 
> Now that all hugepage page processing is done in a single file, clean
> up the code.
> 
>> - Make code match desired semantics
>>   - Update documentation with semantics
>> - Make all warnings and errors messages start with 'HugeTLB:'.
>> - Consistently name command line parsing routines.
>> - Add comments to code
>>   - Describe some of the subtle interactions
>>   - Describe semantics of command line arguments
>>
>> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
>> ---
>>  Documentation/admin-guide/mm/hugetlbpage.rst | 26 +++++++
>>  mm/hugetlb.c                                 | 78 +++++++++++++++-----
>>  2 files changed, 87 insertions(+), 17 deletions(-)
>>
>> diff --git a/Documentation/admin-guide/mm/hugetlbpage.rst b/Documentation/admin-guide/mm/hugetlbpage.rst
>> index 1cc0bc78d10e..afc8888f33c3 100644
>> --- a/Documentation/admin-guide/mm/hugetlbpage.rst
>> +++ b/Documentation/admin-guide/mm/hugetlbpage.rst
>> @@ -100,6 +100,32 @@ with a huge page size selection parameter "hugepagesz=<size>".  <size> must
>>  be specified in bytes with optional scale suffix [kKmMgG].  The default huge
>>  page size may be selected with the "default_hugepagesz=<size>" boot parameter.
>>
>> +Hugetlb boot command line parameter semantics
>> +hugepagesz - Specify a huge page size.  Used in conjunction with hugepages
>> +       parameter to preallocate a number of huge pages of the specified
>> +       size.  Hence, hugepagesz and hugepages are typically specified in
>> +       pairs such as:
>> +               hugepagesz=2M hugepages=512
>> +       hugepagesz can only be specified once on the command line for a
>> +       specific huge page size.  Valid huge page sizes are architecture
>> +       dependent.
>> +hugepages - Specify the number of huge pages to preallocate.  This typically
>> +       follows a valid hugepagesz parameter.  However, if hugepages is the
>> +       first or only hugetlb command line parameter it specifies the number
>> +       of huge pages of default size to allocate.  The number of huge pages
>> +       of default size specified in this manner can be overwritten by a
>> +       hugepagesz,hugepages parameter pair for the default size.
>> +       For example, on an architecture with 2M default huge page size:
>> +               hugepages=256 hugepagesz=2M hugepages=512
>> +       will result in 512 2M huge pages being allocated.  If a hugepages
>> +       parameter is preceded by an invalid hugepagesz parameter, it will
>> +       be ignored.
>> +default_hugepagesz - Specify the default huge page size.  This parameter can
>> +       only be specified on the command line.  No other hugetlb command line
>> +       parameter is associated with default_hugepagesz.  Therefore, it can
>> +       appear anywhere on the command line.  Valid default huge page size is
>> +       architecture dependent.
> 
> Maybe specify what happens/should happen in a case like:
> 
> hugepages=100 default_hugepagesz=1G
> 
> Does that allocate 100 2MB pages or 100 1G pages? Assuming the default
> size is 2MB.
> 
> Also, regarding Randy's comment. It may be nice to keep these docs in
> one place only, so we don't have to maintain 2 docs in sync.
> 
> 
>> +
>>  When multiple huge page sizes are supported, ``/proc/sys/vm/nr_hugepages``
>>  indicates the current number of pre-allocated huge pages of the default size.
>>  Thus, one can use the following command to dynamically allocate/deallocate
>> diff --git a/mm/hugetlb.c b/mm/hugetlb.c
>> index cc85b4f156ca..2b9bf01db2b6 100644
>> --- a/mm/hugetlb.c
>> +++ b/mm/hugetlb.c
>> @@ -2954,7 +2954,7 @@ static void __init hugetlb_sysfs_init(void)
>>                 err = hugetlb_sysfs_add_hstate(h, hugepages_kobj,
>>                                          hstate_kobjs, &hstate_attr_group);
>>                 if (err)
>> -                       pr_err("Hugetlb: Unable to add hstate %s", h->name);
>> +                       pr_err("HugeTLB: Unable to add hstate %s", h->name);
>>         }
>>  }
>>
>> @@ -3058,7 +3058,7 @@ static void hugetlb_register_node(struct node *node)
>>                                                 nhs->hstate_kobjs,
>>                                                 &per_node_hstate_attr_group);
>>                 if (err) {
>> -                       pr_err("Hugetlb: Unable to add hstate %s for node %d\n",
>> +                       pr_err("HugeTLB: Unable to add hstate %s for node %d\n",
>>                                 h->name, node->dev.id);
>>                         hugetlb_unregister_node(node);
>>                         break;
>> @@ -3109,19 +3109,35 @@ static int __init hugetlb_init(void)
>>         if (!hugepages_supported())
>>                 return 0;
>>
>> -       if (!size_to_hstate(default_hstate_size)) {
>> -               if (default_hstate_size != 0) {
>> -                       pr_err("HugeTLB: unsupported default_hugepagesz %lu. Reverting to %lu\n",
>> -                              default_hstate_size, HPAGE_SIZE);
>> -               }
>> -
>> +       /*
>> +        * Make sure HPAGE_SIZE (HUGETLB_PAGE_ORDER) hstate exists.  Some
>> +        * architectures depend on setup being done here.
>> +        *
>> +        * If a valid default huge page size was specified on the command line,
>> +        * add associated hstate if necessary.  If not, set default_hstate_size
>> +        * to default size.  default_hstate_idx is used at runtime to identify
>> +        * the default huge page size/hstate.
>> +        */
>> +       hugetlb_add_hstate(HUGETLB_PAGE_ORDER);
>> +       if (default_hstate_size)
>> +               hugetlb_add_hstate(ilog2(default_hstate_size) - PAGE_SHIFT);
>> +       else
>>                 default_hstate_size = HPAGE_SIZE;
>> -               hugetlb_add_hstate(HUGETLB_PAGE_ORDER);
>> -       }
>>         default_hstate_idx = hstate_index(size_to_hstate(default_hstate_size));
>> +
>> +       /*
>> +        * default_hstate_max_huge_pages != 0 indicates a count (hugepages=)
>> +        * specified before a size (hugepagesz=).  Use this count for the
>> +        * default huge page size, unless a specific value was specified for
>> +        * this size in a hugepagesz/hugepages pair.
>> +        */
>>         if (default_hstate_max_huge_pages) {
>>                 if (!default_hstate.max_huge_pages)
>> -                       default_hstate.max_huge_pages = default_hstate_max_huge_pages;
>> +                       default_hstate.max_huge_pages =
>> +                               default_hstate_max_huge_pages;
>> +               else
>> +                       pr_warn("HugeTLB: First hugepages=%lu kB ignored\n",
>> +                               default_hstate_max_huge_pages);
>>         }
>>
>>         hugetlb_init_hstates();
>> @@ -3174,20 +3190,27 @@ void __init hugetlb_add_hstate(unsigned int order)
>>         parsed_hstate = h;
>>  }
>>
>> -static int __init hugetlb_nrpages_setup(char *s)
>> +/*
>> + * hugepages command line processing
>> + * hugepages must normally follows a valid hugepagsz specification.  If not,
> 
> 'hugepages must' or 'hugepages normally follows'
>> + * ignore the hugepages value.  hugepages can also be the first huge page
>> + * command line option in which case it specifies the number of huge pages
>> + * for the default size.
>> + */
>> +static int __init hugepages_setup(char *s)
>>  {
>>         unsigned long *mhp;
>>         static unsigned long *last_mhp;
>>
>>         if (!parsed_valid_hugepagesz) {
>> -               pr_warn("hugepages = %s preceded by "
>> +               pr_warn("HugeTLB: hugepages = %s preceded by "
>>                         "an unsupported hugepagesz, ignoring\n", s);
>>                 parsed_valid_hugepagesz = true;
>>                 return 1;
>>         }
>>         /*
>> -        * !hugetlb_max_hstate means we haven't parsed a hugepagesz= parameter yet,
>> -        * so this hugepages= parameter goes to the "default hstate".
>> +        * !hugetlb_max_hstate means we haven't parsed a hugepagesz= parameter
>> +        * yet, so this hugepages= parameter goes to the "default hstate".
>>          */
>>         else if (!hugetlb_max_hstate)
>>                 mhp = &default_hstate_max_huge_pages;
> 
> We don't set parsed_valid_hugepagesz to false at the end of this
> function, shouldn't we? Parsing a hugepages= value should 'consume' a
> previously defined hugepagesz= value, so that this is invalid IIUC:
> 
> hugepagesz=x hugepages=z hugepages=y
> 
In this case, we'll get:
"HugeTLB: hugepages= specified twice without interleaving hugepagesz=, ignoring
hugepages=y"

>> @@ -3195,7 +3218,8 @@ static int __init hugetlb_nrpages_setup(char *s)
>>                 mhp = &parsed_hstate->max_huge_pages;
>>
>>         if (mhp == last_mhp) {
>> -               pr_warn("hugepages= specified twice without interleaving hugepagesz=, ignoring\n");
>> +               pr_warn("HugeTLB: hugepages= specified twice without interleaving hugepagesz=, ignoring hugepages=%s\n",
>> +                       s);
>>                 return 1;
>>         }
>>
>> @@ -3214,8 +3238,15 @@ static int __init hugetlb_nrpages_setup(char *s)
>>
>>         return 1;
>>  }
>> -__setup("hugepages=", hugetlb_nrpages_setup);
>> +__setup("hugepages=", hugepages_setup);
>>
>> +/*
>> + * hugepagesz command line processing
>> + * A specific huge page size can only be specified once with hugepagesz.
>> + * hugepagesz is followed by hugepages on the commnad line.  The global
>> + * variable 'parsed_valid_hugepagesz' is used to determine if prior
>> + * hugepagesz argument was valid.
>> + */
>>  static int __init hugepagesz_setup(char *s)
>>  {
>>         unsigned long long size;
>> @@ -3230,16 +3261,23 @@ static int __init hugepagesz_setup(char *s)
>>         }
>>
>>         if (size_to_hstate(size)) {
>> +               parsed_valid_hugepagesz = false;
>>                 pr_warn("HugeTLB: hugepagesz %s specified twice, ignoring\n",
>>                         saved_s);
>>                 return 0;
>>         }
>>
>> +       parsed_valid_hugepagesz = true;
>>         hugetlb_add_hstate(ilog2(size) - PAGE_SHIFT);
>>         return 1;
>>  }
>>  __setup("hugepagesz=", hugepagesz_setup);
>>
>> +/*
>> + * default_hugepagesz command line input
>> + * Only one instance of default_hugepagesz allowed on command line.  Do not
>> + * add hstate here as that will confuse hugepagesz/hugepages processing.
>> + */
>>  static int __init default_hugepagesz_setup(char *s)
>>  {
>>         unsigned long long size;
>> @@ -3252,6 +3290,12 @@ static int __init default_hugepagesz_setup(char *s)
>>                 return 0;
>>         }
>>
>> +       if (default_hstate_size) {
>> +               pr_err("HugeTLB: default_hugepagesz previously specified, ignoring %s\n",
>> +                       saved_s);
>> +               return 0;
>> +       }
>> +
>>         default_hstate_size = size;
>>         return 1;
>>  }
>> --
>> 2.24.1
>>
>>
> .
>
---
Regards,
Longpeng(Mike)

