Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BB71BF7C
	for <lists+linux-riscv@lfdr.de>; Tue, 14 May 2019 00:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vzMf2bqaPbp3ai1NwC+PN3INHGj+d2x155PBhtdCL4=; b=W78RphKu5u04C5
	BceHchuCtAkvqyg8Ql4xjc3eb67m8815cvtKbTEPg6azpLCTrq+SCPGDQWuAIRCkWR5KDxHw6ikJ4
	jec5uBSUneFXBm6XnJi6PDyU1Hu7WVdFIYcu9rjbgVG68ROyqcOCv0MGK1Gx+XtEvb18xnKIHebgg
	WwbsIzBsWbxI+pphyvxvtCz3bBzIXh2g7sgHewD0RBKiGPql6GDhQhZp/DtqXqO3QKapjInjHC4p0
	P/noSRGiMbqeI8bnWik77elLH9oQErlBzNdQhdydE1v6vMUf6ESmmpI4CuwQTX+VcO4H5NDU0R6GZ
	KY80lY3ZCgpu726mVC2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJTd-0003i4-Tf; Mon, 13 May 2019 22:31:21 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJTa-0003hk-7i
 for linux-riscv@lists.infradead.org; Mon, 13 May 2019 22:31:19 +0000
Received: by mail-io1-xd44.google.com with SMTP id x24so3975987ion.5
 for <linux-riscv@lists.infradead.org>; Mon, 13 May 2019 15:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ZTesufEDxec+5sA8PoolbYSfD3zUTYkwZ95SB2LoCtU=;
 b=mG/THQWen8d9t08ReVXM/a4ba8YySpitPWAsXt/KNMLaALTtLfL2x+XjbBwHg6/dDT
 jnYtVVRVZiYOeoCmL38LjdVXrHpbjVlR2mhfGp2mqAUlpw0/xYDUOhVJtk4U/HWSZQOi
 s7kjzCf7KUV3xOayKwlKeYEMsMakNSWOX5xBAJto1mbmlTvsR0xZZwvojS5J3nkPvsDI
 ZDLU2mAFOFKZNjd0kf8RCrCmHUgxoeC3XRa3ftrzRQot4vTvpKbK/WGUszS8qCEub6XR
 WOJB4DHsMpVUJVqmuCCLG4FrfjPWqgt2mjRii/pYhZrPlSf3bKrUCgEZ75J3ns1zVyD+
 TMlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ZTesufEDxec+5sA8PoolbYSfD3zUTYkwZ95SB2LoCtU=;
 b=kF3wg94dOVBGZxVQunQ8FE91nYqPB/fLrCxbxgH7Bn6JmNU32jq6gRJZQU+LsKGWIe
 nU+KDPy2dtpQQKl3GyEnfaYd4NdFEtn2EQi063VoT2XJWpDwl0Bu/XzLZEnNyZ/AVflf
 a1CEWkGlZf9r5Zx93T8dzplIhbMao/vMtYCQ0S+hlXk8CwgUWDB7YEcdRIkwfo4h1t4z
 MZgFfSxBoKxgByJEsXe8z/NTZ4FXnyK5LhbauL5NH54+x7W/PCSm/JJx/JdskU+c6wHx
 s3/QZqo1t/sUQvZzDm4cQTsjmTW/dnB1MUUZwPeRptXVWW9VmoLNybQMemBv4BaXPXib
 y/Pg==
X-Gm-Message-State: APjAAAWubnrurKszmxBaClJbX59JQllwq73duQ/7MZH+vJ1xCM4yDKSs
 gysS+GhGWkrnFJWQ4Y1/K61grQ==
X-Google-Smtp-Source: APXvYqxNdwk0XZB5PFfMdoQ14j5bk/oLnEmvEFIPFapRf1016EP0cu/TyH5p23c/PgySsZ6D9t5wCg==
X-Received: by 2002:a5d:9948:: with SMTP id v8mr4043411ios.190.1557786677263; 
 Mon, 13 May 2019 15:31:17 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 c62sm368695itd.17.2019.05.13.15.31.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 15:31:16 -0700 (PDT)
Date: Mon, 13 May 2019 15:31:16 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Add a PE/COFF compliant Image header.
In-Reply-To: <20190501195607.32553-1-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1905131522370.21198@viisi.sifive.com>
References: <20190501195607.32553-1-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_153118_337563_E07A194B 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Zong Li <zong@andestech.com>, merker@debian.org,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 1 May 2019, Atish Patra wrote:

> Currently, last stage boot loaders such as U-Boot can accept only
> uImage which is an unnecessary additional step in automating boot flows.
> 
> Add a PE/COFF compliant image header that boot loaders can parse and
> directly load kernel flat Image. The existing booting methods will continue
> to work as it is.
> 
> Another goal of this header is to support EFI stub for RISC-V in future.
> EFI specification needs PE/COFF image header in the beginning of the kernel
> image in order to load it as an EFI application. In order to support
> EFI stub, code0 should be replaced with "MZ" magic string and res5(at
> offset 0x3c) should point to the rest of the PE/COFF header (which will
> be added during EFI support).
> 
> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Seems like we're stuck with this basic format for EFI, etc.  Even though 
we may be stuck with it, I think we should take the opportunity to add the 
possibility to extending this header format by adding fields after the 
basic PE/COFF header ends.

In particular, at the very least, I'd suggest adding a u32 after the 
PE/COFF header ends, to represent a "RISC-V header format version number".  
Then if we add more fields that follow the PE/COFF header -- for example, 
to represent the RISC-V instruction set extensions that are required to 
run this binary -- we can just bump that RISC-V-specific version number 
field to indicate to bootloaders that there's more there.

One other observation - if what's here was copied from some other 
architecture, like ARM, please acknowledge the source in the patch 
description.

thanks

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
