Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8236156F7A
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 19:20:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+7bKOPUZZlY3pJwOAtSjjoTBf1tpO918S6bjaru1fQM=; b=XxQZKgc7L7GM90K65y0DRYUmv
	Qm8OXn/8w4M2fJ5snPIYlgXIY2WH1m4qrqhNvQaX/EqA7KQnuXDh+a//lh91RnUmMjIOV7OSFv+0U
	nJzj91Tnh6vhxw8tgGSe5+Nv0C/QygZZc3NbLMZmKNmf+fVnp27p0xzQdCyU57rWemv+19D22iCG1
	d3nQuPT83LlxyLaQVPASO1Bj70nVUTcdJ1BNZAaZkrVnkH7DLEhcWHTavIyrj3x7UrhJEf+OVhlGI
	SQqPFwFvSzcNJY3Hs/iNDw+mQAbrqMyVgm7982sRg2Q4kzphDygu8TgvMlBi42QYhnDYKviOvBO7W
	oreea1FVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgBaQ-0000Fi-6z; Wed, 26 Jun 2019 17:19:58 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgBaL-0000Ei-9S
 for linux-riscv@lists.infradead.org; Wed, 26 Jun 2019 17:19:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561569593; x=1593105593;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=YArOACS7Pt9cfK3TC8bvDp6g5llYMH0JjFNDYT/p8Ck=;
 b=o4xZrm4McmtU6BZnCUJ5OPavZypSoEuBq7mpEuomse2qcpZav0q3/nAj
 /HKr0bli+v0PuyZhxeOB0l0qBeQWf73XHc4JAOj90TVMXS7lYNu/qnAZ+
 3DFj9DaGQOY7BnoaRtzuN8VyfVHKcdyp3SXs3Li2TTKMjR9zbzOJg0DSC
 rKeG50dT8BLBIeyPInKXwimgTW9f3cEfy9d7+aBjMq4ylDJpdEXy3HHD8
 SmaxuDXY+rWkqSfxL2Okk0U73xIAWZmlzAccD8X5JpdJIN6ygS7VB9ltq
 2AeqkcEUsJQZosINItwQR3V6alxHiY2xesd21iXnjQ44v0Wx+hJ6ab9uX g==;
X-IronPort-AV: E=Sophos;i="5.63,420,1557158400"; d="scan'208";a="112820675"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Jun 2019 01:19:49 +0800
IronPort-SDR: FZccEX6NUeVh8CtGnsvwuAWAUW8+zH9JYSsD9pz+A4aTvtyPqPmCWLRQ25sq2t6DDA/T818lAA
 SXKiwtekAQoEfoPJabhtVI5m9R09vxf9iSAhP8jc0WLEC6J5CwQkMKxn2JKHLiJssJ7+cZElQo
 559p4lEoGqBiCVLtG4hhpvMgwK67kaa17EkmS1ulR4M1rzXDPo4XA8iIzjNNkOvffEm69sAZAJ
 CYZQImGOaOsOLb+h5FR0C8wHBERXv9iiXBHLUlF6V7JJEErA5fgSdbufBJ5+vMsvRfL/SQxVh4
 iPxankafitVOfsRtRlDwV/8/
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 26 Jun 2019 10:19:04 -0700
IronPort-SDR: 97Y0CgH4RPL5+r/YWrQsEcdpYD7Tdl/IW1PK0Xnwrz+gVnxzZ3NIeAmzFX7xzF1yIEpdM5bRgT
 8kOIW12rZp063Fs0PG9VhtG4IxdoYPHbJuJBlPGaqA6JYSZf69MwsOdVDrXrhx7UxL88j1Uvml
 0tdiAvwcqliGhHP6LdkTTnumGKc5T5GTDh3shc7kh4ut2qvXRxVqa02AIXZedyR4F33x8wJt7B
 J+6eMQuWmbeMJ3nFDB2jXuuk8ImaPMgZgAf61ZHpZF+8VYVOjUmTannXDXpNl4fJgHW+qH6KvW
 Uyo=
Received: from usa005100.ad.shared (HELO [10.225.99.96]) ([10.225.99.96])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Jun 2019 10:19:48 -0700
Subject: Re: [PATCH] RISC-V: defconfig: enable MMC & SPI for RISC-V
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190625225636.9288-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1906260858130.21507@viisi.sifive.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <576048c8-f987-2fba-2c59-77af21779789@wdc.com>
Date: Wed, 26 Jun 2019 10:19:45 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1906260858130.21507@viisi.sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_101953_470568_05132CC0 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alistair Francis <Alistair.Francis@wdc.com>, Olof Johansson <olof@lixom.net>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/26/19 9:00 AM, Paul Walmsley wrote:
> On Tue, 25 Jun 2019, Atish Patra wrote:
> 
>> Currently, riscv upstream defconfig doesn't let you boot
>> through userspace if rootfs is on the SD card.
>>
>> Let's enable MMC & SPI drivers as well so that one can boot
>> to the user space using default config in upstream kernel.
>>
>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> 
> Thanks.  The patch also enables CONFIG_DEVTMPFS_MOUNT, but doesn't mention
> it, so the following is what I've queued for v5.2-rc.  Let me know if you
> object to it.
> 

Apologies for forgetting about CONFIG_DEVTMPFS_MOUNT in the commit text. 
Thanks for the update.

> 
> - Paul
> 
> 
> From: Atish Patra <atish.patra@wdc.com>
> Date: Tue, 25 Jun 2019 15:56:36 -0700
> Subject: [PATCH] RISC-V: defconfig: enable MMC & SPI for RISC-V
> 
> Currently, riscv upstream defconfig doesn't let you boot
> through userspace if rootfs is on the SD card.
> 
> Let's enable MMC & SPI drivers as well so that one can boot
> to the user space using default config in upstream kernel.
> 
> While here, enable automatic mounting of devtmpfs to simplify
> kernel testing with minimal root filesystems. (pjw)
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
> [paul.walmsley@sifive.com: mention the DEVTMPFS_MOUNT change in the
>   patch description]
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>   arch/riscv/configs/defconfig | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 4f02967e55de..04944fb4fa7a 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -69,6 +69,7 @@ CONFIG_VIRTIO_MMIO=y
>   CONFIG_CLK_SIFIVE=y
>   CONFIG_CLK_SIFIVE_FU540_PRCI=y
>   CONFIG_SIFIVE_PLIC=y
> +CONFIG_SPI_SIFIVE=y
>   CONFIG_EXT4_FS=y
>   CONFIG_EXT4_FS_POSIX_ACL=y
>   CONFIG_AUTOFS4_FS=y
> @@ -84,4 +85,8 @@ CONFIG_ROOT_NFS=y
>   CONFIG_CRYPTO_USER_API_HASH=y
>   CONFIG_CRYPTO_DEV_VIRTIO=y
>   CONFIG_PRINTK_TIME=y
> +CONFIG_SPI=y
> +CONFIG_MMC_SPI=y
> +CONFIG_MMC=y
> +CONFIG_DEVTMPFS_MOUNT=y
>   # CONFIG_RCU_TRACE is not set
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
