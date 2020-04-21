Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A771B3030
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 21:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=oG8/M8woClgdZByQ4O0E/sOcIdtjW+AdEaBy+B1gN2c=; b=YYBuQ/UPmfh0cU
	dUFvBzLzmZGTGfw+bdvC/3g51XOBkZEJIS/9VXRly5+A0dFJlKSCq+ax377njJqALZpUQxh6gIqiG
	4KMMGxsX711x6W9Tg7Z6/V58CAJx+teSM23LSaDGiG/Hi7o/JWRS/vRK6F7/Cof7DSt43dOuHEoxm
	Lsa8Mar0JT1TNlnfN3fasMp75V7LaAIOQg9jL+SBYxQDXKgWokb1DXPJlR8mn8BKEgJH/aury++1T
	Gza4hwB3drV2rZiJ7gw5/OhG30EsAI+oPbJ1GHzP0btFVdWl0h7HM9h55IVrJTRCc6IkpPAWEO90w
	7mjwAFxZ+89GmvClUQ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQyR4-0003eF-8C; Tue, 21 Apr 2020 19:19:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQyQl-0003TQ-UT
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 19:19:41 +0000
Received: by mail-pf1-x444.google.com with SMTP id x77so4434087pfc.0
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 12:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=oG8/M8woClgdZByQ4O0E/sOcIdtjW+AdEaBy+B1gN2c=;
 b=AE1lJjfPrNEBUOYdWiCl8AoGLwLDSjR6b43Tas4kfrYBr91FLcFaylMPHmW9WtF7n5
 Wyapka3xYfcMFhW9Q86ERqgqqS7TOu37qqMROcTI8dCMF6wZiBjcn+GXxpEOkfTnQ1ON
 E6BC/n9lC7YKuwIC09EyR8/mxVpLBY+9eda6+jK9AaCfFYRtNZV/AR/rUFw3fgT3iYd2
 H3X70fZx9YPnPPb0nBiOvSEArc8AL3dxv6SkSGKfwQdJiHgXuHRNPKZibTG1CjnTfjbR
 ykaRT22ozu6rxEj+9wnDwF6LewajfdoeptzROI5Y4j0YGetJ5H8bkuW9/c1VytryMvXC
 icow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=oG8/M8woClgdZByQ4O0E/sOcIdtjW+AdEaBy+B1gN2c=;
 b=TkLf4tdR4B7322SGeHSzTA3KCuHqf+thCsFXapW1gpYBKnJ5HZY90bKSZCFt5n0Rbc
 nAQCo+ordzMc8kJ3EeIFgSeTZ+N4XS88ZyDCPk+4C3HKmyKRaS2PFQZdPRaUNLQkVWBJ
 wgaUFmQVkfCspyI6I3zhS0DFKSz/0zUtVC/hWStD62atSg1bAKYhPQIGQ8yUsBChvuI0
 SPxIyhlMjwvT/6hEN9nkPskOBcJ4Ha2QGj2KFD7QfD4SPiIRxnBXbrHXFL2pYPqEt8yR
 yDUpBdslgNgi9wax5zqp0JB/ol1811HSuuVyz8Ufy2BfJspVVQfUjE1zl1JOAsXxissI
 dr1g==
X-Gm-Message-State: AGi0PuY6XNBknCncuVKcY91/YpePjCLhFGDxEZuZgKvgbGod7yGxaZoM
 yL1yLE8M6QR0rU9BkrfFCflEVA==
X-Google-Smtp-Source: APiQypJ/Wrm6B2FLtfVVw+YdN1C75/RC3kUuQvbW1PXYG5G44AxbRXujl+Rk6VUE5R73VKINuh8xaQ==
X-Received: by 2002:a65:6403:: with SMTP id a3mr23843368pgv.222.1587496776634; 
 Tue, 21 Apr 2020 12:19:36 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id x63sm3144542pfx.122.2020.04.21.12.19.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 12:19:35 -0700 (PDT)
Date: Tue, 21 Apr 2020 12:19:35 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Apr 2020 12:16:14 PDT (-0700)
Subject: Re: [v2 PATCH 2/5] include: pe.h: Add RISC-V related PE definition
In-Reply-To: <20200413212907.29244-3-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-6abd4389-d713-452c-9b62-5c0d3ed2d936@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_121940_037432_63F70153 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, masahiroy@kernel.org,
 linux-kernel@vger.kernel.org, mingo@kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, catalin.marinas@arm.com,
 linux@armlinux.org.uk, linux-riscv@lists.infradead.org, will@kernel.org,
 ardb@kernel.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 14:29:04 PDT (-0700), Atish Patra wrote:
> Define RISC-V related machine types.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  include/linux/pe.h | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/include/linux/pe.h b/include/linux/pe.h
> index 8ad71d763a77..daf09ffffe38 100644
> --- a/include/linux/pe.h
> +++ b/include/linux/pe.h
> @@ -55,6 +55,9 @@
>  #define	IMAGE_FILE_MACHINE_POWERPC	0x01f0
>  #define	IMAGE_FILE_MACHINE_POWERPCFP	0x01f1
>  #define	IMAGE_FILE_MACHINE_R4000	0x0166
> +#define	IMAGE_FILE_MACHINE_RISCV32	0x5032
> +#define	IMAGE_FILE_MACHINE_RISCV64	0x5064
> +#define	IMAGE_FILE_MACHINE_RISCV128	0x5128
>  #define	IMAGE_FILE_MACHINE_SH3		0x01a2
>  #define	IMAGE_FILE_MACHINE_SH3DSP	0x01a3
>  #define	IMAGE_FILE_MACHINE_SH3E		0x01a4

I'm reading "Unified Extensible Firmware Interface (UEFI) Specification Version
2.8 Errata A" and see all this

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

