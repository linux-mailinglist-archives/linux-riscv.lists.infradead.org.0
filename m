Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AD2DFA18
	for <lists+linux-riscv@lfdr.de>; Tue, 22 Oct 2019 03:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7VFFFTaLYjR71YyytUtiQWQUThuukciHay1Rk6/lNpE=; b=kHW+CopdE8bQVy
	/kJegbkLJETQy4yzXDuQRSV2Oi4MKx2VXeFGLg+2KjyBR5SZU94QiL3XcnOTH9Z+OnP/69fG0f7JM
	M8s7xpj0pEJCKtRssYyOReMTTAeKx+P6GIg6Qevda46l7w4J0Jhq59p/J1oMXRuGbhB2XhJ4IBfJV
	dqgOUuQHz+BL7jgI/PVv5UaDdSRNuxCCYiIQ/2IB7sEE9j2bKe7lldNDLXT85AhxKyWu+XuE3ye2A
	RzWUmsOLBBkVZhvnWSCwBjx9e6qEh001m4buyiY+MeoHldPj+EHjaVXXVXRDIlC9+2fNl5C0f/ykM
	ZH2Ni0KEgJnIhE1iVa/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMitK-0000h6-0p; Tue, 22 Oct 2019 01:23:18 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMitG-0000g8-PF
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 01:23:16 +0000
Received: by mail-il1-x142.google.com with SMTP id m16so7455434iln.13
 for <linux-riscv@lists.infradead.org>; Mon, 21 Oct 2019 18:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=HxSTurX1jmsAhOfpsGghsXLIvTQPCzV7aaceHn58k98=;
 b=EJecjF3+nEd1bVBO0x2r9May2yxPiA5i56nJtsaPHWNOunlSAVJaQ72R714XCXmt5g
 qE7uHOx26GVMiQ3tcxzHITeZ4z8sVJgAbNiZ98i/6py1pkF7Ngndur9vlJSB0Eefa83m
 jsoHwwRG7dWcdt6lwh8uauXOTh6Eh1P7i+tN9NmM3rzKNaj8Hwv6aDf8v/87QCWwpVVh
 3h5viIHtwHM9X4krDKGy56i+0gPNpeM8HLwmYJcZgbhiHdoklanfbeSAVJ2pg7vfXZp9
 bV6tuKUFo5++0D/tFiZoTbVksgQTOnOdi4ScAp2G4HxODcbbVAq3wVbTINg0UbSmzB8l
 L10g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=HxSTurX1jmsAhOfpsGghsXLIvTQPCzV7aaceHn58k98=;
 b=gd48/oSBNiEREKGCKMF0Fe8Cs/CKb/O/qFVdSePlMBk2oqPPM2yZ6tjIQrHXU1vB7l
 W1bMPb7OJuwtqbLgp9mvhuICWxZk1YiMFr4YUVua9pUoJZMx3Tf3ZB2FNIndU8Xgi1iM
 6dMxUfBfQVFJw+K/gNc5sGEaJ3SUVdvZA4+RavIvDeR4HqeUZxcSj6WNX9uQ60iawx/z
 orOdenycnwS8yCoXi2qRR/YUBLTiS2xs9MBIfpC/OwUCr39dHrblzdDJFgHpSG8bkhhq
 a0n1fX1hafm6bwdq3Dok3PIa4kXqWxr57LCIqoCgVIq4gL7zHOZSGPfTntQ41iD0wEXU
 WyWQ==
X-Gm-Message-State: APjAAAWX24CvD167FMmHlC9gdSoquskISbjXL6YzIWZIslEzNQIXI5/4
 vhlNPFEub7acLIhOKfHkBhFonTUY0pQ=
X-Google-Smtp-Source: APXvYqwDxSFEQy2XdZlfsF/YxbIAJJAlAeHn1v5sEQT7bVF2SswsEb++F6PWyZ24fGTNgL+h7v0irA==
X-Received: by 2002:a92:d784:: with SMTP id d4mr30026867iln.1.1571707393182;
 Mon, 21 Oct 2019 18:23:13 -0700 (PDT)
Received: from localhost (67-0-11-246.albq.qwest.net. [67.0.11.246])
 by smtp.gmail.com with ESMTPSA id v17sm5902825ilg.1.2019.10.21.18.23.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 18:23:12 -0700 (PDT)
Date: Mon, 21 Oct 2019 18:23:11 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: arch/riscv doesn't support xchg() on bool
In-Reply-To: <20191021204026.GE122863@gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1910211744450.28831@viisi.sifive.com>
References: <20191021204026.GE122863@gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_182314_849328_128242B2 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, linux-fscrypt@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Eric,

On Mon, 21 Oct 2019, Eric Biggers wrote:

> The kbuild test robot reported a build error on RISC-V in this patch:
> 
> 	https://patchwork.kernel.org/patch/11182389/
> 
> ... because of the line:
> 
> 	if (!xchg(&mode->logged_impl_name, true)) {
> 
> where logged_impl_name is a 'bool'.  The problem is that unlike most (or 
> all?) other kernel architectures, arch/riscv/ doesn't support xchg() on 
> bytes.

When I looked at this in August, it looked like several Linux other 
architectures - SPARC, Microblaze, C-SKY, and Hexagon - also didn't 
support xchg() on anything other than 32-bit types:

https://lore.kernel.org/lkml/alpine.DEB.2.21.9999.1908161931110.32497@viisi.sifive.com/

Examples:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/sparc/include/asm/cmpxchg_32.h#n18

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/sparc/include/asm/cmpxchg_32.h#n41

> Is there any chance this could be implemented, to avoid this
> architecture-specific quirk?

It is certainly possible.  I wonder whether it is wise.  Several of the 
other architectures implement a software workaround for this operation, 
and I guess you're advocating that we do the same.  We could copy one 
these implementations.  However, the workarounds balloon into quite a lot 
of code.  Here is an example from MIPS:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/mips/kernel/cmpxchg.c#n10

I could be wrong, but I think this expansion would be pretty surprising 
for most users of xchg().  I suspect most xchg() users are looking for 
something performant, and would be better served by simply using a 
variable with a 32-bit type.

In the case of your patch, it appears that struct 
fscrypt_mode.logged_impl_name is only used in the patched function.  It 
looks like it could be promoted into a u32 without much difficulty.  
Would you be willing to consider that approach of solving the problem?  
Then the code would be able to take advantage of the fast hardware 
implementation that's available on many architectures (including RISC-V).

> Note, there's at least one other place in the kernel that also uses 
> xchg() on a bool.

Given the nasty compatibility code, I wonder if we'd be better served by 
removing most of this compatibility code across the kernel, and just 
requiring callers to use a 32-bit type?  For most callers that I've seen, 
this doesn't seem to be much of an issue; and it would avoid the nasty 
code involved in software emulations of xchg().


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
