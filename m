Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03326524D0
	for <lists+linux-riscv@lfdr.de>; Tue, 25 Jun 2019 09:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=BXmNub+mPJk89FnoNlMS5Nq3kMFUKKCW8+jG6uv0MrY=; b=ZCXCOEN1kgr+b9MtNl0EwCq/e
	EeRdk15as2BBLxkZQebR0mzQ8QN+Mqt09ETSzIy57FiakyjFCe7V2UwoT9Gk62v3EO7XexWO5yS3z
	sI4I6vnqPGY2iFCHUayx2OdJNtGtZqXpVieyeW5v3hjZunn6btbuf7jx7BYum8YgtgQTeKq+7mQt9
	LovRt3KO99iWUMAiR/QYl5v5wA94MIlJfDMAnHMjpUu95X8zUp2nYfGHkfeG0ZSw/sGxo4ilhdyQ5
	uoaiKt7ClHZU2qzrv9ymqJGcwI0+UjxxvgTIUdHsOMeX9U2XBk3HogwD5G+YY4YtOkGTPBsop5Ukx
	idbrxzEdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffvO-0006UL-T5; Tue, 25 Jun 2019 07:31:31 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffvK-0006Tg-Ld
 for linux-riscv@lists.infradead.org; Tue, 25 Jun 2019 07:31:28 +0000
Received: by mail-pl1-f193.google.com with SMTP id b7so8381785pls.6
 for <linux-riscv@lists.infradead.org>; Tue, 25 Jun 2019 00:31:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=LSFnG1VLPAxdrZu/1aoqM762Ph1wbr10WuLO1iu5MTU=;
 b=jHhS0FnLpkyrtgEBYz2nP9iQ57zDouOtSRwf2uj7i6PylSPVhj1uAWk+o3viGkKt0S
 mIgM/OeLabkk0+eH09yruhwz3aohldzrqSDiQJvTm8tOnYWY+Oa967MybF64tlGucBJy
 An39zv/cATJJCo0OkyGLC7g3H7dMqPW41W7DQKJvLtlbFvdtZCurhoQk50dnl8YNyrTn
 oxtgiBmwt/ITCwSUj2iE56MpnnesRmGO2mygqkNyig3EbiDgvPuIKePVfaQzRw3vt4sD
 nfeaKdYM/TRhtu1oT18pMfojtGVjgutft2d/AIzHHo9HXKSK2GYbnve/HTNmX3aAPC5k
 NGCA==
X-Gm-Message-State: APjAAAVSgRM4Wc4Fnj75t2Z+IS97IYl++gzC/iJhkzfjjlrYWp6h/FxQ
 MeOG3AmiWdJnXdlawZiH7koiwQ==
X-Google-Smtp-Source: APXvYqxA3AiKfUdGgybrZGEd+QlSDx5f6SSD+C9TEX69lBm8COreE3lS5uJ/emXNgMIJT2bbhTf5JQ==
X-Received: by 2002:a17:902:8f81:: with SMTP id
 z1mr85183321plo.290.1561447885879; 
 Tue, 25 Jun 2019 00:31:25 -0700 (PDT)
Received: from localhost (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id 12sm13241505pfi.60.2019.06.25.00.31.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 00:31:25 -0700 (PDT)
Date: Tue, 25 Jun 2019 00:31:25 -0700 (PDT)
X-Google-Original-Date: Tue, 25 Jun 2019 00:30:40 PDT (-0700)
Subject: Re: RISC-V nommu support v2
In-Reply-To: <d4fd824d-03ff-e8ab-b19f-9e5ef5c22449@arm.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: vladimir.murzin@arm.com
Message-ID: <mhng-6f11ed95-e3f3-41dc-93c5-1576928b373b@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_003126_704736_DFF8563F 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019 06:08:50 PDT (-0700), vladimir.murzin@arm.com wrote:
> On 6/24/19 12:54 PM, Christoph Hellwig wrote:
>> On Mon, Jun 24, 2019 at 12:47:07PM +0100, Vladimir Murzin wrote:
>>> Since you are using binfmt_flat which is kind of 32-bit only I was expecting to see
>>> CONFIG_COMPAT (or something similar to that, like ILP32) enabled, yet I could not
>>> find it.
>>
>> There is no such thing in RISC-V.  I don't know of any 64-bit RISC-V
>> cpu that can actually run 32-bit RISC-V code, although in theory that
>> is possible.  There also is nothing like the x86 x32 or mips n32 mode
>> available either for now.
>>
>> But it turns out that with a few fixes to binfmt_flat it can run 64-bit
>> binaries just fine.  I sent that series out a while ago, and IIRC you
>> actually commented on it.
>>
>
> True, yet my observation was that elf2flt utility assumes that address
> space cannot exceed 32-bit (for header and absolute relocations). So,
> from my limited point of view straightforward way to guarantee that would
> be to build incoming elf in 32-bit mode (it is why I mentioned COMPAT/ILP32).
>
> Also one of your patches expressed somewhat related idea
>
> "binfmt_flat isn't the right binary format for huge executables to
> start with"
>
> Since you said there is no support for compat/ilp32, probably I'm missing some
> toolchain magic?
>
> Cheers
> Vladimir
To:          Christoph Hellwig <hch@lst.de>
CC:          vladimir.murzin@arm.com
CC:          Christoph Hellwig <hch@lst.de>
CC:          Paul Walmsley <paul.walmsley@sifive.com>
CC:          Damien Le Moal <Damien.LeMoal@wdc.com>
CC:          linux-riscv@lists.infradead.org
CC:          linux-mm@kvack.org
CC:          linux-kernel@vger.kernel.org
Subject:     Re: RISC-V nommu support v2
In-Reply-To: <20190624131633.GB10746@lst.de>

On Mon, 24 Jun 2019 06:16:33 PDT (-0700), Christoph Hellwig wrote:
> On Mon, Jun 24, 2019 at 02:08:50PM +0100, Vladimir Murzin wrote:
>> True, yet my observation was that elf2flt utility assumes that address
>> space cannot exceed 32-bit (for header and absolute relocations). So,
>> from my limited point of view straightforward way to guarantee that would
>> be to build incoming elf in 32-bit mode (it is why I mentioned COMPAT/ILP32).
>>
>> Also one of your patches expressed somewhat related idea
>>
>> "binfmt_flat isn't the right binary format for huge executables to
>> start with"
>>
>> Since you said there is no support for compat/ilp32, probably I'm missing some
>> toolchain magic?
>
> There is no magic except for the tiny elf2flt patch, which for
> now is just in the buildroot repo pointed to in the cover letter
> (and which I plan to upstream once the kernel support has landed
> in Linus' tree).  We only support 32-bit code and data address spaces,
> but we otherwise use the normal RISC-V ABI, that is 64-bit longs and
> pointers.

The medlow code model on RISC-V essentially enforces this -- technically it
enforces a 32-bit region centered around address 0, but it's not that hard to
stay away from negative addresses.  That said, as long as elf2flt gives you an
error it should be fine because all medlow is going to do is give you a
different looking error message.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
