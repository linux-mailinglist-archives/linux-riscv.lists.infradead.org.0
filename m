Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B451A4B34
	for <lists+linux-riscv@lfdr.de>; Fri, 10 Apr 2020 22:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbZtSWGHYkYykhJa3nHZnqGVMYbY5rNmBx2gQTV+dPQ=; b=DyeIdliv/zsf1x
	BY/UBOdTY2UTgSBQ8CU11L5i2+/2yTQWd2cy+L1dH8oLfKaO0QMZMn2LF/jPXxLm8uKZxg09tpM2a
	GaKvpsLAd4EMqUn+qoAuY972IYJQRLJcwzEsNG1alOXprGBcq/lIbF8WlUBx8FZ/pY8QAhJR5qsvb
	EkgsxwVj1+Y9+MXF2Ojz9R90vcu0i1BRk8a0qap43f2M2pZPpPb0Z9i61x2gQ045QuAoqSfWn/PsA
	V3r0ie8gJTXOJZkZxv67sLx98e9A7swgdTptoD8xLQrs9BrotyuBczoeC7hIUzE2HzmMp8mfs0ehA
	tPe9oNOA0SNkAeDiO5Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN0PX-0005xX-6F; Fri, 10 Apr 2020 20:37:59 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN0PS-0005vQ-BQ
 for linux-riscv@lists.infradead.org; Fri, 10 Apr 2020 20:37:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586551070;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NbZtSWGHYkYykhJa3nHZnqGVMYbY5rNmBx2gQTV+dPQ=;
 b=JWGR15YvbhC6qoFhJ65jTMZjIukqqzpXQecAEqW3buxQlmpbZjQC2+PeAevWRrxN+4CkbK
 os5a0Tonhgwl2U4mo+HF0fPVoh3ejU0FswgTDM7vby85x6aB0NJSd8A6NyCvPzHEyTsCOS
 rgzLLh4ZLxofIQBH6pRngDZ45cSFp/Q=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-336-nqEdl7EjMECSiSNA3HYYDg-1; Fri, 10 Apr 2020 16:37:35 -0400
X-MC-Unique: nqEdl7EjMECSiSNA3HYYDg-1
Received: by mail-qv1-f69.google.com with SMTP id d2so2544723qve.11
 for <linux-riscv@lists.infradead.org>; Fri, 10 Apr 2020 13:37:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gxVWpsXehd2QnBfZarZHdPBRSEJgDnwVxfyLVCB52Cg=;
 b=fcY9LzgoxNu5t0tHL6IezKIdo6f52mz1Ip0RzaAYTmbAwNMJXr5MTNTXzGFHDYYbAs
 bRwlgKJyxF7zwMFzVFkXCBetU+66anronDIN5y+omMl04KaodmzfHkbHesFw5OXzXrKi
 3l0rAOuHrW0b5jiqj9zE9MkhHR6oOjDfzFVZKIoCDfu0SuNU2ih0qKN2U7twKpy0++vy
 HvjW09dWIXh3BPturlJffWHy9zyilvWIFIqsHx42E0FnUTfNHM3wyw4k5rGxyLlX519o
 OEbjUqBuj6d1EHKOFGd2grDTgtx4eq5qni73nxE4KtyV/WOEY/AVjg95mjtlPRGirKRV
 JJow==
X-Gm-Message-State: AGi0PubnksSRAjl8w8J2DTa6zvXgtYzbYb8YmQUPLwdMOQ3rcm8hRYA+
 PeiJPyAG2ztPAPkjbCojNbeaSFeoA8SoT/THt8Jew44oNg5JsNlH1Mcbtkj7fuFuvtv04Dykbzl
 /TC2MZG/0+0zD/tW6IlvzLqYhHzT3
X-Received: by 2002:ae9:ddc6:: with SMTP id r189mr5788963qkf.14.1586551054418; 
 Fri, 10 Apr 2020 13:37:34 -0700 (PDT)
X-Google-Smtp-Source: APiQypKe1Sv+Hd4b/FUayP6izEe7bnm61J6Oc94zAFW0+VR9QiXHYnIfFRzLD5HEv6QSI8ArYT1KGg==
X-Received: by 2002:ae9:ddc6:: with SMTP id r189mr5788910qkf.14.1586551053840; 
 Fri, 10 Apr 2020 13:37:33 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id a62sm2370236qkb.134.2020.04.10.13.37.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 13:37:33 -0700 (PDT)
Date: Fri, 10 Apr 2020 16:37:30 -0400
From: Peter Xu <peterx@redhat.com>
To: Mike Kravetz <mike.kravetz@oracle.com>
Subject: Re: [PATCH v2 4/4] hugetlbfs: clean up command line processing
Message-ID: <20200410203730.GG3172@xz-x1>
References: <20200401183819.20647-1-mike.kravetz@oracle.com>
 <20200401183819.20647-5-mike.kravetz@oracle.com>
MIME-Version: 1.0
In-Reply-To: <20200401183819.20647-5-mike.kravetz@oracle.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_133754_556613_A6FC59CD 
X-CRM114-Status: GOOD (  34.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Mina Almasry <almasrymina@google.com>, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S . Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 11:38:19AM -0700, Mike Kravetz wrote:
> With all hugetlb page processing done in a single file clean up code.
> - Make code match desired semantics
>   - Update documentation with semantics
> - Make all warnings and errors messages start with 'HugeTLB:'.
> - Consistently name command line parsing routines.
> - Check for hugepages_supported() before processing parameters.
> - Add comments to code
>   - Describe some of the subtle interactions
>   - Describe semantics of command line arguments
>=20
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> ---
>  .../admin-guide/kernel-parameters.txt         | 35 ++++---
>  Documentation/admin-guide/mm/hugetlbpage.rst  | 44 +++++++++
>  mm/hugetlb.c                                  | 96 +++++++++++++++----
>  3 files changed, 142 insertions(+), 33 deletions(-)
>=20
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentat=
ion/admin-guide/kernel-parameters.txt
> index 1bd5454b5e5f..de653cfe1726 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -832,12 +832,15 @@
>  =09=09=09See also Documentation/networking/decnet.txt.
> =20
>  =09default_hugepagesz=3D
> -=09=09=09[same as hugepagesz=3D] The size of the default
> -=09=09=09HugeTLB page size. This is the size represented by
> -=09=09=09the legacy /proc/ hugepages APIs, used for SHM, and
> -=09=09=09default size when mounting hugetlbfs filesystems.
> -=09=09=09Defaults to the default architecture's huge page size
> -=09=09=09if not specified.
> +=09=09=09[HW] The size of the default HugeTLB page size. This

Could I ask what's "HW"?  Sorry this is not a comment at all but
really a pure question I wanted to ask... :)

> +=09=09=09is the size represented by the legacy /proc/ hugepages
> +=09=09=09APIs.  In addition, this is the default hugetlb size
> +=09=09=09used for shmget(), mmap() and mounting hugetlbfs
> +=09=09=09filesystems.  If not specified, defaults to the
> +=09=09=09architecture's default huge page size.  Huge page
> +=09=09=09sizes are architecture dependent.  See also
> +=09=09=09Documentation/admin-guide/mm/hugetlbpage.rst.
> +=09=09=09Format: size[KMG]
> =20
>  =09deferred_probe_timeout=3D
>  =09=09=09[KNL] Debugging option to set a timeout in seconds for
> @@ -1480,13 +1483,19 @@
>  =09=09=09If enabled, boot-time allocation of gigantic hugepages
>  =09=09=09is skipped.
> =20
> -=09hugepages=3D=09[HW,X86-32,IA-64] HugeTLB pages to allocate at boot.
> -=09hugepagesz=3D=09[HW,IA-64,PPC,X86-64] The size of the HugeTLB pages.
> -=09=09=09On x86-64 and powerpc, this option can be specified
> -=09=09=09multiple times interleaved with hugepages=3D to reserve
> -=09=09=09huge pages of different sizes. Valid pages sizes on
> -=09=09=09x86-64 are 2M (when the CPU supports "pse") and 1G
> -=09=09=09(when the CPU supports the "pdpe1gb" cpuinfo flag).
> +=09hugepages=3D=09[HW] Number of HugeTLB pages to allocate at boot.
> +=09=09=09If this follows hugepagesz (below), it specifies
> +=09=09=09the number of pages of hugepagesz to be allocated.

"... Otherwise it specifies the number of pages to allocate for the
default huge page size." ?

> +=09=09=09Format: <integer>

How about add a new line here?

> +=09hugepagesz=3D
> +=09=09=09[HW] The size of the HugeTLB pages.  This is used in
> +=09=09=09conjunction with hugepages (above) to allocate huge
> +=09=09=09pages of a specific size at boot.  The pair
> +=09=09=09hugepagesz=3DX hugepages=3DY can be specified once for
> +=09=09=09each supported huge page size. Huge page sizes are
> +=09=09=09architecture dependent.  See also
> +=09=09=09Documentation/admin-guide/mm/hugetlbpage.rst.
> +=09=09=09Format: size[KMG]
> =20
>  =09hung_task_panic=3D
>  =09=09=09[KNL] Should the hung task detector generate panics.
> diff --git a/Documentation/admin-guide/mm/hugetlbpage.rst b/Documentation=
/admin-guide/mm/hugetlbpage.rst
> index 1cc0bc78d10e..de340c586995 100644
> --- a/Documentation/admin-guide/mm/hugetlbpage.rst
> +++ b/Documentation/admin-guide/mm/hugetlbpage.rst
> @@ -100,6 +100,50 @@ with a huge page size selection parameter "hugepages=
z=3D<size>".  <size> must
>  be specified in bytes with optional scale suffix [kKmMgG].  The default =
huge
>  page size may be selected with the "default_hugepagesz=3D<size>" boot pa=
rameter.
> =20
> +Hugetlb boot command line parameter semantics
> +hugepagesz - Specify a huge page size.  Used in conjunction with hugepag=
es
> +=09parameter to preallocate a number of huge pages of the specified
> +=09size.  Hence, hugepagesz and hugepages are typically specified in
> +=09pairs such as:
> +=09=09hugepagesz=3D2M hugepages=3D512
> +=09hugepagesz can only be specified once on the command line for a
> +=09specific huge page size.  Valid huge page sizes are architecture
> +=09dependent.
> +hugepages - Specify the number of huge pages to preallocate.  This typic=
ally
> +=09follows a valid hugepagesz parameter.  However, if hugepages is the
> +=09first or only hugetlb command line parameter it specifies the number
> +=09of huge pages of default size to allocate.  The number of huge pages
> +=09of default size specified in this manner can be overwritten by a
> +=09hugepagesz,hugepages parameter pair for the default size.
> +=09For example, on an architecture with 2M default huge page size:
> +=09=09hugepages=3D256 hugepagesz=3D2M hugepages=3D512
> +=09will result in 512 2M huge pages being allocated.  If a hugepages
> +=09parameter is preceded by an invalid hugepagesz parameter, it will
> +=09be ignored.
> +default_hugepagesz - Specify the default huge page size.  This parameter=
 can
> +=09only be specified once on the command line.  No other hugetlb command
> +=09line parameter is associated with default_hugepagesz.  Therefore, it
> +=09can appear anywhere on the command line.  If hugepages=3D is the firs=
t
> +=09hugetlb command line parameter, the specified number of huge pages
> +=09will apply to the default huge page size specified with
> +=09default_hugepagesz.  For example,
> +=09=09hugepages=3D512 default_hugepagesz=3D2M

No strong opinion, but considering to the special case of gigantic
huge page mentioned below, I'm thinking maybe it's easier to just ask
the user to always use "hugepagesz=3DX hugepages=3DY" pair when people
want to reserve huge pages.

For example, some user might start to use this after this series
legally:

    default_hugepagesz=3D2M hugepages=3D1024

Then the user thinks, hmm, maybe it's good to use 1G pages, by just
changing some numbers:

    default_hugepagesz=3D1G hugepages=3D2

Then if it stops working it could really confuse the user.

(Besides, it could be an extra maintainaince burden for linux itself)

> +=09will result in 512 2M huge pages being allocated.  However, specifyin=
g
> +=09the number of default huge pages in this manner will not apply to
> +=09gigantic huge pages.  For example,
> +=09=09hugepages=3D10 default_hugepagesz=3D1G
> +=09=09=09=09or
> +=09=09default_hugepagesz=3D1G hugepages=3D10
> +=09will NOT result in the allocation of 10 1G huge pages.  In order to
> +=09preallocate gigantic huge pages, there must be hugepagesz, hugepages
> +=09parameter pair.  For example,
> +=09=09hugepagesz=3D1G hugepages=3D10 default_hugepagesz=3D1G
> +=09=09=09=09or
> +=09=09default_hugepagesz=3D1G hugepagesz=3D1G hugepages=3D10
> +=09will result 10 1G huge pages being allocated and the default huge
> +=09page size will be set to 1G.  Valid default huge page size is
> +=09architecture dependent.
> +
>  When multiple huge page sizes are supported, ``/proc/sys/vm/nr_hugepages=
``
>  indicates the current number of pre-allocated huge pages of the default =
size.
>  Thus, one can use the following command to dynamically allocate/dealloca=
te
> diff --git a/mm/hugetlb.c b/mm/hugetlb.c
> index 72a4343509d5..74ef53f7c5a7 100644
> --- a/mm/hugetlb.c
> +++ b/mm/hugetlb.c
> @@ -3054,7 +3054,7 @@ static void __init hugetlb_sysfs_init(void)
>  =09=09err =3D hugetlb_sysfs_add_hstate(h, hugepages_kobj,
>  =09=09=09=09=09 hstate_kobjs, &hstate_attr_group);
>  =09=09if (err)
> -=09=09=09pr_err("Hugetlb: Unable to add hstate %s", h->name);
> +=09=09=09pr_err("HugeTLB: Unable to add hstate %s", h->name);
>  =09}
>  }
> =20
> @@ -3158,7 +3158,7 @@ static void hugetlb_register_node(struct node *node=
)
>  =09=09=09=09=09=09nhs->hstate_kobjs,
>  =09=09=09=09=09=09&per_node_hstate_attr_group);
>  =09=09if (err) {
> -=09=09=09pr_err("Hugetlb: Unable to add hstate %s for node %d\n",
> +=09=09=09pr_err("HugeTLB: Unable to add hstate %s for node %d\n",
>  =09=09=09=09h->name, node->dev.id);
>  =09=09=09hugetlb_unregister_node(node);
>  =09=09=09break;
> @@ -3209,19 +3209,35 @@ static int __init hugetlb_init(void)
>  =09if (!hugepages_supported())
>  =09=09return 0;
> =20
> -=09if (!size_to_hstate(default_hstate_size)) {
> -=09=09if (default_hstate_size !=3D 0) {
> -=09=09=09pr_err("HugeTLB: unsupported default_hugepagesz %lu. Reverting =
to %lu\n",
> -=09=09=09       default_hstate_size, HPAGE_SIZE);
> -=09=09}
> -
> +=09/*
> +=09 * Make sure HPAGE_SIZE (HUGETLB_PAGE_ORDER) hstate exists.  Some
> +=09 * architectures depend on setup being done here.
> +=09 *
> +=09 * If a valid default huge page size was specified on the command lin=
e,
> +=09 * add associated hstate if necessary.  If not, set default_hstate_si=
ze
> +=09 * to default size.  default_hstate_idx is used at runtime to identif=
y
> +=09 * the default huge page size/hstate.
> +=09 */
> +=09hugetlb_add_hstate(HUGETLB_PAGE_ORDER);
> +=09if (default_hstate_size)
> +=09=09hugetlb_add_hstate(ilog2(default_hstate_size) - PAGE_SHIFT);
> +=09else
>  =09=09default_hstate_size =3D HPAGE_SIZE;
> -=09=09hugetlb_add_hstate(HUGETLB_PAGE_ORDER);
> -=09}
>  =09default_hstate_idx =3D hstate_index(size_to_hstate(default_hstate_siz=
e));
> +
> +=09/*
> +=09 * default_hstate_max_huge_pages !=3D 0 indicates a count (hugepages=
=3D)
> +=09 * specified before a size (hugepagesz=3D).  Use this count for the
> +=09 * default huge page size, unless a specific value was specified for
> +=09 * this size in a hugepagesz/hugepages pair.
> +=09 */
>  =09if (default_hstate_max_huge_pages) {

Since we're refactoring this - Could default_hstate_max_huge_pages be
dropped directly (in hugepages=3D we can create the default hstate, then
we set max_huge_pages of the default hstate there)?  Or did I miss
anything important?

>  =09=09if (!default_hstate.max_huge_pages)
> -=09=09=09default_hstate.max_huge_pages =3D default_hstate_max_huge_pages=
;
> +=09=09=09default_hstate.max_huge_pages =3D
> +=09=09=09=09default_hstate_max_huge_pages;
> +=09=09else
> +=09=09=09pr_warn("HugeTLB: First hugepages=3D%lu ignored\n",
> +=09=09=09=09default_hstate_max_huge_pages);
>  =09}
> =20
>  =09hugetlb_init_hstates();
> @@ -3274,20 +3290,31 @@ void __init hugetlb_add_hstate(unsigned int order=
)
>  =09parsed_hstate =3D h;
>  }
> =20
> -static int __init hugetlb_nrpages_setup(char *s)
> +/*
> + * hugepages command line processing
> + * hugepages normally follows a valid hugepagsz specification.  If not, =
ignore
> + * the hugepages value.  hugepages can also be the first huge page comma=
nd line
> + * option in which case it specifies the number of huge pages for the de=
fault
> + * size.
> + */
> +static int __init hugepages_setup(char *s)
>  {
>  =09unsigned long *mhp;
>  =09static unsigned long *last_mhp;
> =20
> +=09if (!hugepages_supported()) {
> +=09=09pr_warn("HugeTLB: huge pages not supported, ignoring hugepages =3D=
 %s\n", s);
> +=09=09return 0;
> +=09}
> +
>  =09if (!parsed_valid_hugepagesz) {
> -=09=09pr_warn("hugepages =3D %s preceded by "
> -=09=09=09"an unsupported hugepagesz, ignoring\n", s);
> +=09=09pr_warn("HugeTLB: hugepages =3D %s preceded by an unsupported huge=
pagesz, ignoring\n", s);

s/preceded/is preceded/?

>  =09=09parsed_valid_hugepagesz =3D true;
> -=09=09return 1;
> +=09=09return 0;
>  =09}
>  =09/*
> -=09 * !hugetlb_max_hstate means we haven't parsed a hugepagesz=3D parame=
ter yet,
> -=09 * so this hugepages=3D parameter goes to the "default hstate".
> +=09 * !hugetlb_max_hstate means we haven't parsed a hugepagesz=3D parame=
ter
> +=09 * yet, so this hugepages=3D parameter goes to the "default hstate".
>  =09 */
>  =09else if (!hugetlb_max_hstate)
>  =09=09mhp =3D &default_hstate_max_huge_pages;
> @@ -3295,8 +3322,8 @@ static int __init hugetlb_nrpages_setup(char *s)
>  =09=09mhp =3D &parsed_hstate->max_huge_pages;
> =20
>  =09if (mhp =3D=3D last_mhp) {
> -=09=09pr_warn("hugepages=3D specified twice without interleaving hugepag=
esz=3D, ignoring\n");
> -=09=09return 1;
> +=09=09pr_warn("HugeTLB: hugepages=3D specified twice without interleavin=
g hugepagesz=3D, ignoring hugepages=3D%s\n", s);
> +=09=09return 0;
>  =09}
> =20
>  =09if (sscanf(s, "%lu", mhp) <=3D 0)
> @@ -3314,12 +3341,24 @@ static int __init hugetlb_nrpages_setup(char *s)
> =20
>  =09return 1;
>  }
> -__setup("hugepages=3D", hugetlb_nrpages_setup);
> +__setup("hugepages=3D", hugepages_setup);
> =20
> +/*
> + * hugepagesz command line processing
> + * A specific huge page size can only be specified once with hugepagesz.
> + * hugepagesz is followed by hugepages on the command line.  The global
> + * variable 'parsed_valid_hugepagesz' is used to determine if prior
> + * hugepagesz argument was valid.
> + */
>  static int __init hugepagesz_setup(char *s)
>  {
>  =09unsigned long size;
> =20
> +=09if (!hugepages_supported()) {
> +=09=09pr_warn("HugeTLB: huge pages not supported, ignoring hugepagesz =
=3D %s\n", s);
> +=09=09return 0;
> +=09}
> +
>  =09size =3D (unsigned long)memparse(s, NULL);
> =20
>  =09if (!arch_hugetlb_valid_size(size)) {
> @@ -3329,19 +3368,31 @@ static int __init hugepagesz_setup(char *s)
>  =09}
> =20
>  =09if (size_to_hstate(size)) {
> +=09=09parsed_valid_hugepagesz =3D false;
>  =09=09pr_warn("HugeTLB: hugepagesz %s specified twice, ignoring\n", s);
>  =09=09return 0;
>  =09}
> =20
> +=09parsed_valid_hugepagesz =3D true;
>  =09hugetlb_add_hstate(ilog2(size) - PAGE_SHIFT);
>  =09return 1;
>  }
>  __setup("hugepagesz=3D", hugepagesz_setup);
> =20
> +/*
> + * default_hugepagesz command line input
> + * Only one instance of default_hugepagesz allowed on command line.  Do =
not
> + * add hstate here as that will confuse hugepagesz/hugepages processing.
> + */
>  static int __init default_hugepagesz_setup(char *s)
>  {
>  =09unsigned long size;
> =20
> +=09if (!hugepages_supported()) {
> +=09=09pr_warn("HugeTLB: huge pages not supported, ignoring default_hugep=
agesz =3D %s\n", s);
> +=09=09return 0;
> +=09}
> +
>  =09size =3D (unsigned long)memparse(s, NULL);
> =20
>  =09if (!arch_hugetlb_valid_size(size)) {
> @@ -3349,6 +3400,11 @@ static int __init default_hugepagesz_setup(char *s=
)
>  =09=09return 0;
>  =09}
> =20
> +=09if (default_hstate_size) {
> +=09=09pr_err("HugeTLB: default_hugepagesz previously specified, ignoring=
 %s\n", s);
> +=09=09return 0;
> +=09}

Nitpick: ideally this can be moved before memparse().

Thanks,

> +
>  =09default_hstate_size =3D size;
>  =09return 1;
>  }
> --=20
> 2.25.1
>=20
>=20

--=20
Peter Xu


