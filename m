Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0007B87A
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 06:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SapkiV4uxCcTxF5bL72QSMbztHAH2aJ0UdyQz5pICYM=; b=WHUnpiOobcZ4Ia
	dYTyCw1kPz7JMjXKbHN7SrdCJxH7NDVrK+UwI6VKCZGUMIl9d0KBY4SgP3kMNBXzbIZFRoU8OnFm3
	2+9VjTTtUAe16G5QUEBlatn7NMkqJv2TueVk5RdHJwF6WDBtvmcU3F/dz/TVJX8CtHPsPHBTJWbeL
	+r5WTDE7kG0SD9IQlwr5ysRRc0yjzlX35iRJWLvU3LP1K63GPYGHyhGag8VYWGjbx0gpaG8gpAp1+
	ngsNA9eJopSqqwqLRzpNJhJbUSUXrOm1FjcqcnRJWu6xgqeLGsBXhR/0JpbHNxH++hwpleU+D1rHo
	K0KXUOYdNZ+w4gttmyVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsg99-0004JY-K5; Wed, 31 Jul 2019 04:23:27 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsg95-0004J3-1i
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 04:23:24 +0000
Received: by mail-ot1-x341.google.com with SMTP id z23so40406009ote.13
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 21:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=tm6ntfcYmNHUpIkveTc5p4r6569ul1qIUEH4oxRjwA4=;
 b=glzUp8gAgo6Q9+gjT5xKBMG30uah/MGW3tgERppjauRxj/tmhas8EEff6tCjk6x9Oo
 y4yyZpqHDXgaIfsG4COlY9nVCd1boATU3DBufsqEy40c28G9vJaAsDkpn0KK+No1GvNH
 qTG5qAKnhCkwiGa6BBEERHNzSbb8ZEClpQLptBPI8pxEXmmih6Jd7qqCXTXelHmSSfV2
 PngzgOomffODrlcUHKczYix6KxGwDAzWrQ7M739Hp0U6FwXuxSj2Nn1VdFfspfag6XCs
 AcALx/y+P3AngYVbf2fVaNiAQbx4faQhsUnrcqe6vRdyXlKg9OCXPZM1AWyOudTLoarK
 KXPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=tm6ntfcYmNHUpIkveTc5p4r6569ul1qIUEH4oxRjwA4=;
 b=fhKyM7mh9IYgDt8E4r8HUg4D4GtpggnHXZNVDA/hGgfJTXOcvaC8ywdvxBb+dgdbyo
 hJ7blDeZ3yESTHs/v+rX7mhFkuBBL99YB1MazCp/Vg1atiX3urIv72GMnnu/vgVqVyW9
 LsCda08Hy5nUBG92AJjBeFxux8ubcz2rZgzTrpbT05b3ZahX2mxCFGflgBQ51is82j1H
 Na3KzRYxIGg1S/Dut1XDjmtfec+UjJf/PIB+M7Pvq8eJ56Wx4igMZjIFM0tk6pzuyYcx
 fMrwWQJvxCI1ykv/zIAmFTs+9lKplxSnQzObW7N1HX6jvYV1fdPMPNieM+qDr4uAbzOm
 iUXg==
X-Gm-Message-State: APjAAAVBhZ1IBtCy+4AL9KgTUZINrn5z7sIgPWWbIqhjGCn7VoxPOqju
 iXN4Z7QNEx4232KvUacuRUFoWQ==
X-Google-Smtp-Source: APXvYqyrmqRX0TMTUvKRI9kn2OfHhiN/A4ouvjYOKSZwB7DvlVq/p3PsehROt3mdsdg2QXOYNxFx/w==
X-Received: by 2002:a05:6830:2119:: with SMTP id
 i25mr9479782otc.282.1564547000208; 
 Tue, 30 Jul 2019 21:23:20 -0700 (PDT)
Received: from localhost ([2600:100e:b005:6ca0:a8bb:e820:e6d3:8809])
 by smtp.gmail.com with ESMTPSA id v203sm25607331oie.5.2019.07.30.21.23.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 21:23:19 -0700 (PDT)
Date: Tue, 30 Jul 2019 21:23:18 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>
Subject: Re: [PATCH v2 2/5] RISC-V: Add riscv_isa reprensenting ISA features
 common across CPUs
In-Reply-To: <20190731012418.24565-3-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1907302117420.15340@viisi.sifive.com>
References: <20190731012418.24565-1-atish.patra@wdc.com>
 <20190731012418.24565-3-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_212323_158311_66ECBB43 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 30 Jul 2019, Atish Patra wrote:

> From: Anup Patel <anup.patel@wdc.com>
> 
> This patch adds riscv_isa integer to represent ISA features common
> across all CPUs. The riscv_isa is not same as elf_hwcap because
> elf_hwcap will only have ISA features relevant for user-space apps
> whereas riscv_isa will have ISA features relevant to both kernel
> and user-space apps.
> 
> One of the use case is KVM hypervisor where riscv_isa will be used
> to do following operations:
> 
> 1. Check whether hypervisor extension is available
> 2. Find ISA features that need to be virtualized (e.g. floating
>    point support, vector extension, etc.)
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/hwcap.h | 25 +++++++++++++++++++++
>  arch/riscv/kernel/cpufeature.c | 41 +++++++++++++++++++++++++++++++---
>  2 files changed, 63 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> index 7ecb7c6a57b1..e069f60ad5d2 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -22,5 +22,30 @@ enum {
>  };
>  
>  extern unsigned long elf_hwcap;
> +
> +#define RISCV_ISA_EXT_A		(1UL << ('A' - 'A'))

Are these uppercase variants still needed if we define the ISA string to 
be all lowercase, per our recent discussion?

> +#define RISCV_ISA_EXT_a		RISCV_ISA_EXT_A
> +#define RISCV_ISA_EXT_C		(1UL << ('C' - 'A'))
> +#define RISCV_ISA_EXT_c		RISCV_ISA_EXT_C
> +#define RISCV_ISA_EXT_D		(1UL << ('D' - 'A'))
> +#define RISCV_ISA_EXT_d		RISCV_ISA_EXT_D
> +#define RISCV_ISA_EXT_F		(1UL << ('F' - 'A'))
> +#define RISCV_ISA_EXT_f		RISCV_ISA_EXT_F
> +#define RISCV_ISA_EXT_H		(1UL << ('H' - 'A'))
> +#define RISCV_ISA_EXT_h		RISCV_ISA_EXT_H
> +#define RISCV_ISA_EXT_I		(1UL << ('I' - 'A'))
> +#define RISCV_ISA_EXT_i		RISCV_ISA_EXT_I
> +#define RISCV_ISA_EXT_M		(1UL << ('M' - 'A'))
> +#define RISCV_ISA_EXT_m		RISCV_ISA_EXT_M
> +#define RISCV_ISA_EXT_S		(1UL << ('S' - 'A'))
> +#define RISCV_ISA_EXT_s		RISCV_ISA_EXT_S
> +#define RISCV_ISA_EXT_U		(1UL << ('U' - 'A'))
> +#define RISCV_ISA_EXT_u		RISCV_ISA_EXT_U
> +
> +extern unsigned long riscv_isa;
> +
> +#define riscv_isa_extension_available(ext_char)	\
> +		(riscv_isa & RISCV_ISA_EXT_##ext_char)
> +
>  #endif
>  #endif
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index b1ade9a49347..177529d48d87 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c

[ ... ]

> @@ -43,8 +49,22 @@ void riscv_fill_hwcap(void)
>  			continue;
>  		}
>  
> -		for (i = 0; i < strlen(isa); ++i)
> +		i = 0;
> +		isa_len = strlen(isa);
> +#if defined(CONFIG_32BIT)
> +		if (strncasecmp(isa, "rv32", 4) != 0)

strcmp()?

> +			i += 4;
> +#elif defined(CONFIG_64BIT)
> +		if (strncasecmp(isa, "rv64", 4) != 0)

And again here?

> +			i += 4;
> +#endif
> +		for (; i < isa_len; ++i) {
>  			this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
> +			if ('a' <= isa[i] && isa[i] <= 'z')
> +				this_isa |= (1UL << (isa[i] - 'a'));
> +			if ('A' <= isa[i] && isa[i] <= 'Z')
> +				this_isa |= (1UL << (isa[i] - 'A'));

Are these uppercase variants still needed?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
