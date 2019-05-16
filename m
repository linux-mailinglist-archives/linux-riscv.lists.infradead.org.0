Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8554220CD3
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 18:21:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PeICNj43igKZifFct1OkxtgSwSZ/AJeDVv9VKepD5dc=; b=NekbAM3pTm7t6u
	U0AVomXW3tv/l9JTA5D4U46BpqXAaaydymGb+zUsTR6ySzNrcr3OkB94Wgcepxdo0l2r+yku0wzWU
	ApwfVgUn8tifx8NgsO62YWeEpqzPKI6rXn0i7RvFCSm4KvC+y3lrMX1Y0qeP5vM09kUIXY2hxfvvy
	974CMU9f7yeWpabPk0k7s2jsiTM6mMfhINr77ookLBTH8SQCstQm855pATcQBePT4cKdbffTXv2Ff
	/yLqB3FLHWjmWY23853FmOBiedJE3PxdGT9Wf+rTj7oZVIq9FSPJBlutxvDdr3oEivUZJqMb+KBZ8
	BkLnKfE5Rt933WKOr8CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJ7q-0005F8-JY; Thu, 16 May 2019 16:20:58 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJ7m-0005EB-Jl
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 16:20:56 +0000
Received: by mail-it1-x141.google.com with SMTP id u186so7265542ith.0
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 09:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=hMLpDS1jKcs2MyhRFTjl19/qN34wfJls1Iu1HUS9Vz4=;
 b=JPlM3LzE1hWtQkAOdAG30RK6qrwfJt24cV6Tw561ErU5FLecTW3IJkI6+ODGvIZMTc
 KiQirom5P0jlRWDvHHOffWmD25hm0jeVgWo5hBvk7sEyFzI/qhdOZhPGdezYCT9b156+
 jTW4mfIW24KZ8HRP7TD/RnZaa5W6uiWphjYAI+UkstYvMlIC5+Csp/uxWTfNZpYmkCGr
 gGixL8nHlLxDf8MP67nVga1rn24eyQUefjdNODtyYE9Xtpee+CQLsnr6abx237wAcU2N
 ruuJy6rgatmV90J8s8h+2YB86NpA7KlTn8nOJBlXtmFFc3qEVNO+KgfV4yVMDgcFI/2s
 3DdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=hMLpDS1jKcs2MyhRFTjl19/qN34wfJls1Iu1HUS9Vz4=;
 b=QhJqC3t4WUTyOlOQBz+X2WlFxxEoQ9bYaNeHVX7Hqmg2P6tuoCSCUJsX9V6eXHGLRI
 RBgoqzWlKbp+f3frtebtOfb33ATWGyLkrEHaNinXCOMxSOZ4uREpGZJbR81hJO2x2mDi
 ugbT2jYcv+S/9AT6A1s752wWTEYQa1s2xc/GJ1MpCUSCKlQVCQ6gdG06MXG7FtXOF2mf
 C+iGnk9oGYgWZYTM0gmTM1RhfLg0SUrzlBvYpw7Mp7aURAz9CvgV2mrv1cS18RT25PqA
 71wjk2ttZ6R+uWvL/tUCuqWkpF14en/rrSrkOE4QpItD8NcYDS+BvlqDMDU1F/8h+Dzo
 Lddg==
X-Gm-Message-State: APjAAAXEQTOMxoX0PPBIWe7NQp1DTYKX0oM+/O9ndo82v2yYBkEQyBgx
 fMb4CaHD6E2dzclZ4NKC1MTQMQ==
X-Google-Smtp-Source: APXvYqyMYLQHH8q9zmIFP9JOmOSxSC2ZmZMq4gXVNXN+eM4JSY3bwaceLZVoS0swTPIkyrPmuKyxdQ==
X-Received: by 2002:a02:95aa:: with SMTP id b39mr32673541jai.45.1558023651411; 
 Thu, 16 May 2019 09:20:51 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 25sm1819099iof.37.2019.05.16.09.20.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 09:20:50 -0700 (PDT)
Date: Thu, 16 May 2019 09:20:49 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Add a PE/COFF compliant Image header.
In-Reply-To: <bb7f36bd-d614-b235-7100-3d965f92afc8@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1905160833030.9104@viisi.sifive.com>
References: <20190501195607.32553-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1905131522370.21198@viisi.sifive.com>
 <a498967c-cdc8-637a-340b-202d216c5360@wdc.com>
 <alpine.DEB.2.21.9999.1905131704371.21198@viisi.sifive.com>
 <a3eb8e32-5344-801e-03ef-98107ed13130@wdc.com>
 <alpine.DEB.2.21.9999.1905131735450.21198@viisi.sifive.com>
 <bb7f36bd-d614-b235-7100-3d965f92afc8@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_092054_649437_CA2249A0 
X-CRM114-Status: GOOD (  29.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, trini@konsulko.com,
 Albert Ou <aou@eecs.berkeley.edu>, catalin.marinas@arm.com,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 will.deacon@arm.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, marek.vasut@gmail.com,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

+ ARM64 maintainers, Tom, Marek

Hi Atish,

On Mon, 13 May 2019, Atish Patra wrote:

> On 5/13/19 5:40 PM, Paul Walmsley wrote:
> > On Mon, 13 May 2019, Atish Patra wrote:
> > > On 5/13/19 5:09 PM, Paul Walmsley wrote:
> > > 
> > > > What are the semantics of those reserved fields?
> > > 
> > > +struct riscv_image_header {
> > > +	u32 code0;
> > > +	u32 code1;
> > > +	u64 text_offset;
> > > +	u64 image_size;
> > > +	u64 res1;
> > > +	u64 res2;
> > > +	u64 res3;
> > > +	u64 magic;
> > > +	u32 res4; ---> We can use this for versioning when required
> > > +	u32 res5; ---> This is reserved for PE/COFF header
> > > +};
> > 
> > I saw that in your patch.  The problem is that this doesn't describe what
> > other software might expect in those fields.  Can anything at all be
> > placed in those reserved fields?
> 
> Yes. The reserved fields can be used for anything that boot loaders and Linux
> kernel can agree with each other. If you look at the ARM64, they have
> "Informative flags" in place of res1.
> 
> > > > > Do we need to add it now or add it later when we actually need a
> > > > > version
> > > > > number. My preference is to add it later based on requirement.
> > > > 
> > > > If it isn't added now, how would bootloaders know whether it was there
> > > > or
> > > > not?
> > > > 
> > > > 
> > > Here is the corresponding U-Boot Patch
> > > https://patchwork.ozlabs.org/patch/1096087/
> > > 
> > > Currently, boot loader doesn't care about versioning. Since we are
> > > updating a
> > > reserved field, offsets will not change. If a boot loader want to use the
> > > versioning, it should be patched along with the kernel patch.
> > > 
> > > Any other boot loader that doesn't care about the version, it can continue
> > > to
> > > do so without any change.
> > > 
> > > My idea is to enable the minimum required fields in this patch and keep
> > > everything else as reserved so that it can be amended in future as
> > > required.
> > 
> > If those fields really are reserved for implementors to do whatever they
> > want with them, then that might be a reasonable approach.  That seems
> > unlikely, however, since specification authors usually reserve the right
> > to use reserved fields for their own purposes in later versions.
> > 
> Technically, we are just implementing the "DOS" header part of PE/COFF format
> for now. It only mandates a magic string "MZ" at the top and a 32bit value at
> offset 0x3c tells us offset of PE/COFF header in image.
> Anything in between is implementation specific.
> 
> For example, it will be updated to support EFI stub as described in the commit
> text,
> "In order to support EFI stub, code0 should be replaced with "MZ" magic string
> and res5(at offset 0x3c) should point to the rest of the PE/COFF header (which
> will be added during EFI support)."

OK.  I think we should try to share this header format with other 
architectures.  This one after all is copied from ARM64, and some of the 
core fields will be the same across multiple architectures.  That way we 
can try to avoid proliferating different boot header formats for each 
architecture, which should be better for both the kernel and the 
bootloaders.  ARM64 folks, would you be interested in working together on 
this?

Meanwhile, to unblock RISC-V, and to make this header durable for future 
extensions and to match the existing ARM64 usage, I think we should make 
the following technical changes to what you proposed:

1. Reserve all of the existing ARM64 fields in the same way ARM64 does 
   now.  This keeps open the possibility that we can merge this format 
   with the one used with ARM64, and reuse the same bootloader code.  
   Based on our discussions, it sounds like the primary difference between 
   what you're proposing and the ARM64 format involves the flags/res1 
   field.  Let's keep that as a flag field, reuse ARM64's endianness bit 
   as architecture-independent, then define the rest of the flags in that 
   field as architecture-defined.

2. Allocate another set of reserved bits for a format version number.
   Probably 16 bits is sufficient.  This tells bootloaders how to 
   interpret the header fields in future extensions.  The goal is to 
   preserve compatibility across newer and older versions of the header.  
   The existing ARM64 header would be version 0.  This format that 
   incorporates these changes would be version 1.  The thought here is to 
   preserve all of the semantics of existing fields in newer versions 
   (except for any remaining reserved fields), since many people often do 
   not replace their bootloaders.

3. Define a way to point to additional fields outside this existing
   header.  Another 32 bits of previously reserved data can be defined as 
   a file offset to additional fields (defined as 32-bit words from the 
   beginning of the header).  This should make it technically simple to 
   add additional fields in the future.  For example, RISC-V, and probably 
   other architectures, will want to add some way to indicate which ISA 
   extensions are necessary to run the kernel image.  Right now there 
   won't be any fields defined, so we can leave the format undefined for 
   the moment also.  Let's stipulate for version 1 that this field 
   should be fixed at 0, indicating no additional fields.

4. Document all of this, in this patch, in a file such as
   Documentation/riscv/boot-image-header.txt.  If
   we're able to reach agreement with other maintainers, then we
   can move this file out into a common, non-architecture-specific 
   documentation location.


thanks

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
