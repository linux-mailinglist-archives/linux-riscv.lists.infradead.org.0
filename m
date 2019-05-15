Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2CD1EA60
	for <lists+linux-riscv@lfdr.de>; Wed, 15 May 2019 10:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuYWkw1AxID8amY+F5D3mUMg+d4w+FDfDgp+6fHk6GE=; b=jTnIJvq4HyGBPv
	J49IfJzeFkIAtj9mjjVdzyes9NR8LoaXi8lFwbTI+DX730MN4Lot83Eo+7EZnL6ltl/RQXv6/6NRi
	gYX/lIRUmFdjWF8BP713GL+DPAC2S4MmImcpVy+eRB75c1Q74wXNcxEeq2h0kMKvd3SqwqHGeBHqB
	59soj/4N4ZT4ky7DljsHrr9FS3Wa1jihd6rTWyPn03K3ilvXteOYsRf4AlSTws1KwSx+5FyAe7C0I
	Y2wnEB/w277l/+5oCoF9UmEEUjP6VxOAiUfOtBrn7d7y6vBSLOPWn5OkJSH+uOrniwKyWDItJCKb/
	oUIKU0kFg956poWkZhfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQpYC-0003OC-Ke; Wed, 15 May 2019 08:46:12 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpY8-0003ND-Sw
 for linux-riscv@lists.infradead.org; Wed, 15 May 2019 08:46:10 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4F8hZjB076609
 for <linux-riscv@lists.infradead.org>; Wed, 15 May 2019 04:46:07 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sgexv9xr7-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Wed, 15 May 2019 04:46:06 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <schwidefsky@de.ibm.com>;
 Wed, 15 May 2019 09:46:03 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 15 May 2019 09:45:59 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4F8jwVB56557678
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 May 2019 08:45:58 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C8998A4055;
 Wed, 15 May 2019 08:45:58 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6876CA4040;
 Wed, 15 May 2019 08:45:58 +0000 (GMT)
Received: from mschwideX1 (unknown [9.152.212.60])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed, 15 May 2019 08:45:58 +0000 (GMT)
Date: Wed, 15 May 2019 10:45:57 +0200
From: Martin Schwidefsky <schwidefsky@de.ibm.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] s390: move arch/s390/defconfig to
 arch/s390/configs/defconfig
In-Reply-To: <20190513021116.12191-1-yamada.masahiro@socionext.com>
References: <20190513021116.12191-1-yamada.masahiro@socionext.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19051508-0020-0000-0000-0000033CDC18
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19051508-0021-0000-0000-0000218F9C91
Message-Id: <20190515104557.1d5a389f@mschwideX1>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-15_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905150057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_014608_933408_96D149B1 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-s390@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 11:11:16 +0900
Masahiro Yamada <yamada.masahiro@socionext.com> wrote:

> As of Linux 5.1, alpha and s390 are the last architectures that
> have defconfig in arch/*/ instead of arch/*/configs/.
> 
>   $ find arch -name defconfig | sort
>   arch/alpha/defconfig
>   arch/arm64/configs/defconfig
>   arch/csky/configs/defconfig
>   arch/nds32/configs/defconfig
>   arch/riscv/configs/defconfig
>   arch/s390/defconfig
> 
> The arch/$(ARCH)/defconfig is the hard-coded default in Kconfig,
> and I want to deprecate it after evacuating the remaining defconfig
> into the standard location, arch/*/configs/.
> 
> Define KBUILD_DEFCONFIG like other architectures, and move defconfig
> into the configs/ subdirectory.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

I have added this patch to my linux/s390 tree and will push it upstream
soon. Thanks!

> ---
> 
>  arch/s390/Makefile                | 2 ++
>  arch/s390/{ => configs}/defconfig | 0
>  2 files changed, 2 insertions(+)
>  rename arch/s390/{ => configs}/defconfig (100%)
> 
> diff --git a/arch/s390/Makefile b/arch/s390/Makefile
> index df1d6a150f30..de8521fc9de5 100644
> --- a/arch/s390/Makefile
> +++ b/arch/s390/Makefile
> @@ -10,6 +10,8 @@
>  # Copyright (C) 1994 by Linus Torvalds
>  #
> 
> +KBUILD_DEFCONFIG := defconfig
> +
>  LD_BFD		:= elf64-s390
>  KBUILD_LDFLAGS	:= -m elf64_s390
>  KBUILD_AFLAGS_MODULE += -fPIC
> diff --git a/arch/s390/defconfig b/arch/s390/configs/defconfig
> similarity index 100%
> rename from arch/s390/defconfig
> rename to arch/s390/configs/defconfig


-- 
blue skies,
   Martin.

"Reality continues to ruin my life." - Calvin.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
