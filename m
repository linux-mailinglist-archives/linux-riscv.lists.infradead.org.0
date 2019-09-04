Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6998A870F
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 19:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=0DLMFhD0QU0EcyP9xa+Z2r6ZczjeB8QLA22mbg88VEA=; b=AgnVUG4RNdOX6otp+LH9a3oNQ
	EXZKRQYDD+CrjhCCVG9FmLcBHBEUwmYZ1MtqKWlgZIvQpqvE1KetUuSIeexdUqoeMDHEgaDj4JT3f
	/Ie/+330D6AOXfmWHGBDArzNgIDqSmm1y7JspcJHFhyT3RzAkTWJYpjN0ZGDUUaZ7S9X/a6383cqZ
	/29zEb/vG/W4alTKcf7wXocz0CSi2KFAWOHqi4nYjqMByGOPI+YblilZFOkuQhTGr2qJ7RTkstOo1
	OeWnPvlAr8ZaWwWGb1isVxylyofnJUaddjgu1s1G6GE0OwJOtWWh3JZV7h8Y8plrC1EmZ/lD61acH
	XxdkAtOgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ZFR-00038t-1e; Wed, 04 Sep 2019 17:39:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ZFL-00034U-C4
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 17:39:09 +0000
Received: by mail-pg1-x542.google.com with SMTP id d1so11608809pgp.4
 for <linux-riscv@lists.infradead.org>; Wed, 04 Sep 2019 10:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=fnPQogmGyf/rZrNOMY93lP4f3OA2tMyv+b626VA291Q=;
 b=FgUUKgaYgsDr6I07H2o3Q610bjL1v1oW7ncFOBzlAOSIyfvku9p7ZfBTbLd6803AuB
 HDlnwg2bRciTaYAEvz/XaSAf5fb8wY/SAjRBIU2FLDAWOQFMmJ+NaGV2VD1mD0ae8cvr
 EwpB4zhbG1lHluQvHKzHB8qCN2PgytN+fMwE/skAkMgOcRTy9U7DeJIp4LPic7sUJ5bh
 dZE5qYWv9FbWU4saQJuj9By39q4tKaetyuNjc1teW86v9jBlHz7kBp8UkaPIfwDYAxvm
 DGo65A5Xlq2A8fvlU9+nTWB6CMukJraT70KMokeASuEmPVjaKLJpYXuiqy8mnpewiTmm
 wo1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=fnPQogmGyf/rZrNOMY93lP4f3OA2tMyv+b626VA291Q=;
 b=LsXAdrvzmRmxJEPgLRkeEBxNzUmwZ9Gy8JJdBOwwsgKxsdCyQ/5437SwVID4UEX74D
 d/tsYY+Iz5fxqaL08c4s8AX9AWZodjXHp+5vB3kiYAT4htTC+gEItXNKFelZcf1xKZNq
 EjAlxURy19VVl9IK/LDkC+SqJPNuZVOySXAvHDfSmQyuU4CaHG4kdK1R0ESlHHh/K+Pd
 i/a/XQUaJ095/pwlnMbYZ8QkA8fjBLmjzeOc1/0y9fv8brLojtOGbN41lfDV7gBZGkES
 mhmN/tjLh9699qtWeL6Gll4wHJ9oa5npICRRwMPWYt6LUe2rLSAK/UT5CYlR1C3y2vxo
 oFnQ==
X-Gm-Message-State: APjAAAXq+6wbWBgXzlr5T8VanKUY6XRXEOTGxYyU7TFwzFMA9t2XNXBj
 ZUKpg82xg3al3b08mcFGkGHZRQ==
X-Google-Smtp-Source: APXvYqxqFsCKPlPnYyeR3exAMZa8hqMd+a2n3uHc/kRKoW+bopOvqYqzU/JG62ghy4hH7On2P17wBg==
X-Received: by 2002:a62:2f85:: with SMTP id v127mr14353403pfv.68.1567618746771; 
 Wed, 04 Sep 2019 10:39:06 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id c2sm2987416pjs.13.2019.09.04.10.39.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 10:39:06 -0700 (PDT)
Date: Wed, 04 Sep 2019 10:39:06 -0700 (PDT)
X-Google-Original-Date: Wed, 04 Sep 2019 10:38:13 PDT (-0700)
Subject: Re: [PATCH] RISC-V: Add Plan 9 support to the defconfigs
In-Reply-To: <CAAhSdy3toBiyHhvRLbdj+xtfdhWLzd4ZEKpdj+VdbB=ZL9khSw@mail.gmail.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: anup@brainfault.org
Message-ID: <mhng-c968e71c-65d1-4308-88da-c44052316a3c@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_103907_500233_45698027 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 03 Sep 2019 20:35:12 PDT (-0700), anup@brainfault.org wrote:
> On Wed, Sep 4, 2019 at 5:06 AM Palmer Dabbelt <palmer@sifive.com> wrote:
>>
>> QEMU contains facilities for sharing directory trees between a guest and
>> host that are based on plan 9's network filesystem.  This patch adds the
>> relevant entries to our defconfigs to enable these, the most interesting
>> of which is probably CONFIG_VIRTIO_PCI.
>>
>> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
>> ---
>>  arch/riscv/configs/defconfig      | 4 ++++
>>  arch/riscv/configs/rv32_defconfig | 4 ++++
>>  2 files changed, 8 insertions(+)
>>
>> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
>> index 3efff552a261..79ae1f932b2e 100644
>> --- a/arch/riscv/configs/defconfig
>> +++ b/arch/riscv/configs/defconfig
>> @@ -29,6 +29,8 @@ CONFIG_IP_PNP_DHCP=y
>>  CONFIG_IP_PNP_BOOTP=y
>>  CONFIG_IP_PNP_RARP=y
>>  CONFIG_NETLINK_DIAG=y
>> +CONFIG_NET_9P=y
>> +CONFIG_NET_9P_VIRTIO=y
>>  CONFIG_PCI=y
>>  CONFIG_PCIEPORTBUS=y
>>  CONFIG_PCI_HOST_GENERIC=y
>> @@ -73,6 +75,7 @@ CONFIG_USB_STORAGE=y
>>  CONFIG_USB_UAS=y
>>  CONFIG_MMC=y
>>  CONFIG_MMC_SPI=y
>> +CONFIG_VIRTIO_PCI=y
>>  CONFIG_VIRTIO_MMIO=y
>>  CONFIG_EXT4_FS=y
>>  CONFIG_EXT4_FS_POSIX_ACL=y
>> @@ -86,6 +89,7 @@ CONFIG_NFS_V4=y
>>  CONFIG_NFS_V4_1=y
>>  CONFIG_NFS_V4_2=y
>>  CONFIG_ROOT_NFS=y
>> +CONFIG_9P_FS=y
>>  CONFIG_CRYPTO_USER_API_HASH=y
>>  CONFIG_CRYPTO_DEV_VIRTIO=y
>>  CONFIG_PRINTK_TIME=y
>> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
>> index 7da93e494445..5bf9e919900a 100644
>> --- a/arch/riscv/configs/rv32_defconfig
>> +++ b/arch/riscv/configs/rv32_defconfig
>> @@ -29,6 +29,8 @@ CONFIG_IP_PNP_DHCP=y
>>  CONFIG_IP_PNP_BOOTP=y
>>  CONFIG_IP_PNP_RARP=y
>>  CONFIG_NETLINK_DIAG=y
>> +CONFIG_NET_9P=y
>> +CONFIG_NET_9P_VIRTIO=y
>>  CONFIG_PCI=y
>>  CONFIG_PCIEPORTBUS=y
>>  CONFIG_PCI_HOST_GENERIC=y
>> @@ -69,6 +71,7 @@ CONFIG_USB_OHCI_HCD=y
>>  CONFIG_USB_OHCI_HCD_PLATFORM=y
>>  CONFIG_USB_STORAGE=y
>>  CONFIG_USB_UAS=y
>> +CONFIG_VIRTIO_PCI=y
>>  CONFIG_VIRTIO_MMIO=y
>>  CONFIG_SIFIVE_PLIC=y
>>  CONFIG_EXT4_FS=y
>> @@ -83,6 +86,7 @@ CONFIG_NFS_V4=y
>>  CONFIG_NFS_V4_1=y
>>  CONFIG_NFS_V4_2=y
>>  CONFIG_ROOT_NFS=y
>> +CONFIG_9P_FS=y
>>  CONFIG_CRYPTO_USER_API_HASH=y
>>  CONFIG_CRYPTO_DEV_VIRTIO=y
>>  CONFIG_PRINTK_TIME=y
>> --
>> 2.21.0
>>
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv
>
> This is already covered by the following patch:
> https://lkml.org/lkml/2019/8/29/684
>
> Regards,
> Anup

Thanks, let's drop mine.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
