Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E13D17992B
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 20:45:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=9oKB3i1ZL0ZQYFGAjNrsDY0V469iYMU+fibmYfZRHIQ=; b=Lv+6DQwxIMb5JS
	HJFHfvsdK1OJOZ0zLwl67KZWo0q+L3gkmNLk/7VE/HL3k2vWVGAmHO8tdutfdgZWF9l/zJC4Nk6Tr
	t19/QdRKx4CeehGD+cEJ7dgdyPRCaRxJ4Rcl2bO790DXv5jlR2tI+Ee11YApFrSARAeSwT75vCZCC
	vP8XT11E9/k65YVhw1rcI0iswwb2piWFe3ymtl3h/vJJV/i23mLtzXUmP2zD2/zMSj4XX1zCBqHPn
	CAInUA9VMPYadqKzcJ1KrLsQPWPPMMqRFeShBuzHAwvqdFJnTF7Ao6jPWCmYa8LhDkh16dO5W5tE7
	zsFpLF8s/jSI+jQdBpPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Zx4-0001sM-8H; Wed, 04 Mar 2020 19:45:06 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Zws-0001li-Rl
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 19:44:56 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay11so1486587plb.0
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 11:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=9oKB3i1ZL0ZQYFGAjNrsDY0V469iYMU+fibmYfZRHIQ=;
 b=cm8Oe8hW9I9P7eOdygATX5aEmBO8dUfVJvUpbFmxj0T+XNonhgwfdYx+ExzPGFRpy9
 goeBgpIEhIXK3siig5tHXzTfbIVIntC+WkBmH85UFtIHFZONRAxyckdmxxbC5ELBr1Ey
 3PMTxeAKKiCoewuh9laJf7wNqN+U9JHI4VOPl23oBgfDkMBe1rBsLc1lxeSkDE0rdqHL
 UBZxqQEIbrhmRiXu/rAZgYCXmW6QqGxWir4qT+ue98DUmA6b9BwlFUr8NuH3w4KJ8LP5
 AX9R+t82cUCMAMot3sDrh0KdY0oYfKuQahYi8v0iJS8g+dG/qTT7Pgt73qsuu9i2nFF0
 CiAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=9oKB3i1ZL0ZQYFGAjNrsDY0V469iYMU+fibmYfZRHIQ=;
 b=NItP4bRjoOyR5Vc1WVC1Qq6d0qoR76rJS3Jh2CAUEHHw+zgveI/7Tx4DPHM8niS0kg
 Pou09XvNsDM96kFpm9nAGjMJZN578w4+8tI206U9TdZFMETwmz33Evsho+eVkHFSgxT+
 vFRVntudqPSMitEU27LyEe1fDBfdcT6WfhKO4vip2oq3l0KUd8dQa6ADhHVaw59/FVoN
 74W+TXUgVqBusTr07ANJhjVrm31xXsCCpdFu1JlUvOx/nQMYRHeZJ70+vp2+2S2hogBs
 5l32SEejnAFFZzn1Wn31N7WCpj9889Jtt/NPJg1PN3u23DnySfv+qj9bZJ89AtA/K4Yq
 oodw==
X-Gm-Message-State: ANhLgQ25Y6TG2yp2eJajTGlyfcKvJJ6M5sO83NYu8rMPhTwuheHXzPEV
 n4/FqTMtRaHxTFS6LpaTvu/UkAXZ7b0=
X-Google-Smtp-Source: ADFU+vsJsACf7IJaA67Acsp8azXatTuyfxm9j3APl4hr5Df8o0d+oY61/MfSp4AVE2GjdQy247NGfA==
X-Received: by 2002:a17:902:9a86:: with SMTP id
 w6mr4407536plp.37.1583351093542; 
 Wed, 04 Mar 2020 11:44:53 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id v123sm3856567pfv.146.2020.03.04.11.44.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 11:44:53 -0800 (PST)
Date: Wed, 04 Mar 2020 11:44:53 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 11:43:49 PST (-0800)
Subject: Re: [PATCH 10/10] riscv: create a loader.bin for the kendryte
 kflash.py tool
In-Reply-To: <20200212103432.660256-11-damien.lemoal@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-32c79d0e-b900-421f-9a1c-fd07c54da833@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_114454_911809_4BECF790 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, Anup Patel <Anup.Patel@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 12 Feb 2020 02:34:32 PST (-0800), Damien Le Moal wrote:
> From: Christoph Hellwig <hch@lst.de>
>
> This can be loaded into the Kendryte KD210 based boards using:
>
> kflash.py/kflash.py -t arch/riscv/boot/loader.bin
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/Makefile      | 4 ++--
>  arch/riscv/boot/Makefile | 3 +++
>  2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index b9009a2fbaf5..440969763e14 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -84,11 +84,11 @@ vdso_install:
>  	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
>
>  ifeq ($(CONFIG_RISCV_M_MODE),y)
> -KBUILD_IMAGE := $(boot)/loader
> +KBUILD_IMAGE := $(boot)/loader.bin
>  else
>  KBUILD_IMAGE := $(boot)/Image.gz
>  endif
> -BOOT_TARGETS := Image Image.gz loader
> +BOOT_TARGETS := Image Image.gz loader loader.bin
>
>  all:	$(notdir $(KBUILD_IMAGE))
>
> diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
> index 36db8145f9f4..3530c59b3ea7 100644
> --- a/arch/riscv/boot/Makefile
> +++ b/arch/riscv/boot/Makefile
> @@ -41,6 +41,9 @@ $(obj)/Image.lzma: $(obj)/Image FORCE
>  $(obj)/Image.lzo: $(obj)/Image FORCE
>  	$(call if_changed,lzo)
>
> +$(obj)/loader.bin: $(obj)/loader FORCE
> +	$(call if_changed,objcopy)
> +
>  install:
>  	$(CONFIG_SHELL) $(srctree)/$(src)/install.sh $(KERNELRELEASE) \
>  	$(obj)/Image System.map "$(INSTALL_PATH)"

I'm a bit worried about having a big pile of odd formats floating around in
here, but given that there are very few RISC-V boards around I think it's OK to
err on the side of just collecting everything in one place and organizing it
later -- it's kind of hard to organize two things :)

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

