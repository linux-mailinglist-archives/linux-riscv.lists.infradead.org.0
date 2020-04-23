Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BC71B66F8
	for <lists+linux-riscv@lfdr.de>; Fri, 24 Apr 2020 00:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=N/UJzAr5dtehQTHBzXy34ZuA/CAq9RTQL58DIHmSsDU=; b=Fha7WGkbUWWq4k
	oAHL2KkMW95+1Eu3Ovgk2gjTkNh7NMBmqc7t9yXE4APyPEnrRgcrXkNvr69OuhsltlM3JE+t6+bPx
	qshsXIXX5wpLOecnZdEh3UfRiae9Tz1fHbZSmUv3yFpokPi+6aoEPtpfXK2zUhi8tivn3Lfyy+zc8
	nNMZuJpy/CK5F+3Jeg6xBYmwUyU+OViDBXpgGYdT83zuf6GIZeoBqBQXzPaV0vNfEyrt5scgjAvvl
	9W7nvLsHqBqSg1s0w5X8VT+MTxuKq1WYcatYlnCCPaxKWI05abw7+1ppXGgajO24b+76d8izNnyeK
	KpaPMg2rZufTicekPLkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRkZF-0008Nm-D8; Thu, 23 Apr 2020 22:43:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRkZB-0008Mq-4i
 for linux-riscv@lists.infradead.org; Thu, 23 Apr 2020 22:43:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id x77so3778516pfc.0
 for <linux-riscv@lists.infradead.org>; Thu, 23 Apr 2020 15:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=N/UJzAr5dtehQTHBzXy34ZuA/CAq9RTQL58DIHmSsDU=;
 b=jxWUUAHcZRLKkUCvwG3LxBUbKC0Gy7M7XkL63S5P+Xc5a3iB/dxyTwjsaiq4YSnhnt
 nIliNPSoyS+0tv7rEPxJKt7d8S1w6c/T+RHiHtG22tL7VE5ho57cXV+QrFES49a64tsJ
 BZ6PVIAu3W3xz8b0WQzrCxrf2DoTSi8VGlPxqsH9j/2/nJE3pj8A+EKCsXYC+jH4qEf8
 Gg37qlnOEK3/IALDBKMZVl9POHEbSulN/OrRyrTizHNo2f30rBVjCawgISMTyrBzimDB
 3YiXkmmIIMeQo17eMp9Tfm9Kz7wNhm1YB7QQ8LZX2coRgsw2xGX2ODlWk32ivaBvC1cU
 ZnrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=N/UJzAr5dtehQTHBzXy34ZuA/CAq9RTQL58DIHmSsDU=;
 b=qzFnhN4OKdtRatu/8HjBUxcM2k73z5/l4949F3WKdQ0B/ohhto0xHpHxiAZoT96jPa
 KknZuKos+Ygtwd8oz1c9RiNjJ5+HtsG0p1wSjQucPzJUNYV4AVLQNjdrE9+7Ua1FuT9O
 Z6pxPae0tGPIZf8zAxgpbQj/70Yu8FbrZcaXSKBAV81zqiqEFtnnRhEC2OTsN4/P4NWm
 2qWmaM710BY8yMvVsHbuKh40/BPRPrsF08wvtLDYytcVx1GImhbWWFu0pzN2J5mY/VbW
 vV2Q+RTfeJE/oc0V8/NT3ng9v/NoeFrolAFJMy4mM5mD12Qq+isGBvXGKz4VcDVpnrZC
 UvTg==
X-Gm-Message-State: AGi0Pua/u31CwurFziNRO1j+HK8uYDGRT8ahFnw9ten1IRxN+Z7TQQrj
 IfXapA9135AVBg2iKPS/supZhA==
X-Google-Smtp-Source: APiQypK+qFJjBWZIM4JseuejIHzEpgez/1Eb2rNDWCq0/ARVphGcY6JqUI7zr0Fw6Lx1kMeyag+eTA==
X-Received: by 2002:a62:25c6:: with SMTP id l189mr6346111pfl.28.1587681810670; 
 Thu, 23 Apr 2020 15:43:30 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id o9sm3280699pje.47.2020.04.23.15.43.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 15:43:29 -0700 (PDT)
Date: Thu, 23 Apr 2020 15:43:29 -0700 (PDT)
X-Google-Original-Date: Thu, 23 Apr 2020 15:43:27 PDT (-0700)
Subject: Re: [PATCH v5 0/7] Add UEFI support for RISC-V
In-Reply-To: <20200422172414.6662-1-ardb@kernel.org>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: ardb@kernel.org
Message-ID: <mhng-f9b51803-74ca-494c-8433-59911c657b2f@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_154333_208341_8E55847B 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: linux-efi@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 aou@eecs.berkeley.edu, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, ardb@kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 22 Apr 2020 10:24:07 PDT (-0700), ardb@kernel.org wrote:
> This is a rework of Atish's series [0] to add EFI stub loader support
> to the RISC-V port. The purpose is to split the code in a way that makes
> it amenable to being merged via different trees during the same cycle.
> While at it, I added a patch to disable initrd= loading for new ports,
> given that it is deprecated and replaced with a method based on a
> special UEFI device path.
>
> My changes are logged in the individual patches.
>
> I propose to take the first four patches via the EFI tree, and expose
> them via a stable tag so that the RISC-V maintainers can merge it before
> applying the remaining patches. That will ensure that both trees remain
> in a buildable state, with working EFI stub support on the riscv branch.

Works for me.  Thanks!

>
> Cc: Atish Patra <atish.patra@wdc.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: linux-riscv@lists.infradead.org
>
> Ard Biesheuvel (1):
>   efi/libstub: Make initrd file loader configurable
>
> Atish Patra (6):
>   efi/libstub: Move arm-stub to a common file
>   efi/libstub/riscv: add arch specific efi.h header file
>   include: pe.h: Add RISC-V related PE definition
>   RISC-V: Define fixmap bindings for generic early ioremap support
>   RISC-V: Add PE/COFF header for EFI stub
>   RISC-V: Add EFI stub support.
>
>  arch/arm/Kconfig                              |   2 +-
>  arch/arm64/Kconfig                            |   2 +-
>  arch/riscv/Kconfig                            |  21 ++++
>  arch/riscv/Makefile                           |   1 +
>  arch/riscv/configs/defconfig                  |   1 +
>  arch/riscv/include/asm/Kbuild                 |   1 +
>  arch/riscv/include/asm/efi.h                  |  41 +++++++
>  arch/riscv/include/asm/fixmap.h               |  18 +++
>  arch/riscv/include/asm/io.h                   |   1 +
>  arch/riscv/include/asm/sections.h             |  13 +++
>  arch/riscv/kernel/Makefile                    |   4 +
>  arch/riscv/kernel/efi-header.S                | 100 ++++++++++++++++
>  arch/riscv/kernel/head.S                      |  16 +++
>  arch/riscv/kernel/image-vars.h                |  53 +++++++++
>  arch/riscv/kernel/vmlinux.lds.S               |  22 +++-
>  drivers/firmware/efi/Kconfig                  |  15 ++-
>  drivers/firmware/efi/libstub/Makefile         |  22 +++-
>  .../efi/libstub/{arm-stub.c => efi-stub.c}    |   0
>  drivers/firmware/efi/libstub/file.c           |   3 +
>  drivers/firmware/efi/libstub/riscv-stub.c     | 109 ++++++++++++++++++
>  include/linux/pe.h                            |   3 +
>  21 files changed, 436 insertions(+), 12 deletions(-)
>  create mode 100644 arch/riscv/include/asm/efi.h
>  create mode 100644 arch/riscv/include/asm/sections.h
>  create mode 100644 arch/riscv/kernel/efi-header.S
>  create mode 100644 arch/riscv/kernel/image-vars.h
>  rename drivers/firmware/efi/libstub/{arm-stub.c => efi-stub.c} (100%)
>  create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c

