Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F61212854E
	for <lists+linux-riscv@lfdr.de>; Sat, 21 Dec 2019 00:00:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kYpUFg+g66OYb+0+NDvmD3uzMBedPiin3i8BKFrTBZw=; b=s8yw70hPWN47/QKX8zGJ0tTgs
	AJNiT35kc82xt37a21ykVxakhnNoCNqTI1+uKQnowzNle0/mq+hXoPHFazs6j6hmQtwsOC/5PzWDe
	5NxB42MU7bM5mqBr1idcI0ozfEkNRKNE28YSDFQ7/sdf0BFaJRQRaTxKdWaRBTmly3ZC1X0w4EYd7
	6GYzPx9RgYWhXvZgNab6PPkabmjbIJB8YVU0YMMGL/TEuoAR4WeKBeneW40m3E9lR87Asi/ltMQFq
	LV5t659YJtw2vm7TllOsG81MomUBIBh14R/3KlmLit81eceNwX52WFvorEwGb19AkEE8yBA6RcYg7
	TD731+EFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiRGK-00077t-DX; Fri, 20 Dec 2019 23:00:48 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiRGG-00076z-Gp
 for linux-riscv@lists.infradead.org; Fri, 20 Dec 2019 23:00:46 +0000
Received: by mail-il1-x141.google.com with SMTP id v69so9285758ili.10
 for <linux-riscv@lists.infradead.org>; Fri, 20 Dec 2019 15:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=kYpUFg+g66OYb+0+NDvmD3uzMBedPiin3i8BKFrTBZw=;
 b=Dg9+0JwC0nl7+te1/6kqnsS0yw2ym/KBliialLPLp3KLENQXrsQ4hs3MFdyjzlKqld
 vpzcmhBHAeVo3JiNOTOyT/5OIaLPkflMLAg4itd7iEy48e5e8vjRSNXw2KmuWLpDVen5
 u8m+o6D6Ce1KBC1GYrdSC66voxU6MWkOuVGk3PbdmodUuWlMmW70Htw1XT4hiqGRAf8b
 46RX3autdlYKZy4ZamcrjI7G2dJDRScbr1MSx5z5aPoC6bVuo9qd4iyRCZ2dZBOzr+yc
 9LAp5wSkwuGE01uyjAyCBKszam+XUgI6Y0SZMSFT0rVe0zYxU1Y7vvTDPbhdDcA/cTxQ
 KV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=kYpUFg+g66OYb+0+NDvmD3uzMBedPiin3i8BKFrTBZw=;
 b=aXxHKDaaJbpE5YUEF08lntvN0Lfbcm58y44jgJypXVpWnYp0NSXXvT0wRtv9EbewQW
 i2do2fKAe9el/P55oA8C3sMhAsaPvqv8HeLBIG+HG3n/uidbYe/aKjsp7VmpmxfzVjXg
 uSlJ4Oh0GVdpASxWYthkNp3I6ZF2ccTOlC4eLBuEwdDuMR1Kge+eR6yMkMNu7REO4zNF
 LV4FPjHPcp8Cp174Nr3glK3FhVmCrA/VehrM+bW7MAVMp3EHnDAIyZjwwDG8G+7u07vz
 bKVI57ZVM+lWpoxjTIZvNX0j+nnpJ/RF9iVw7HNK7BsbwMhkkRgOAIUlfGzdi6oFQljp
 OjPQ==
X-Gm-Message-State: APjAAAXeEZdhHxe46KHa4uvHGEoD0ncYo9Chs/2KYFuGA6RvfOrCfRcA
 nmAc5EoFHJeWs0WMYht/7UurkA==
X-Google-Smtp-Source: APXvYqwHDVsOJy6xq6j6CKHzVDaMD3x7chhr2BoQe/hKpFFOE+Zlw2OuSvViO0uW1zFxhD1O/Go46w==
X-Received: by 2002:a92:d708:: with SMTP id m8mr14116422iln.244.1576882843543; 
 Fri, 20 Dec 2019 15:00:43 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id h23sm5524854ilf.57.2019.12.20.15.00.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 15:00:43 -0800 (PST)
Date: Fri, 20 Dec 2019 15:00:41 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] riscv: export flush_icache_all to modules
In-Reply-To: <CAOesGMg_VySkckuTfeMWkfcQ6fUBokAQbCGXP9emz9WvtX4fKQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1912201500230.57866@viisi.sifive.com>
References: <20191217040704.91995-1-olof@lixom.net>
 <alpine.DEB.2.21.9999.1912200302290.3767@viisi.sifive.com>
 <CAOesGMg_VySkckuTfeMWkfcQ6fUBokAQbCGXP9emz9WvtX4fKQ@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_150044_695993_8A2D5849 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 20 Dec 2019, Olof Johansson wrote:

> On Fri, Dec 20, 2019 at 3:05 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > On Mon, 16 Dec 2019, Olof Johansson wrote:
> >
> > > This is needed by LKDTM (crash dump test module), it calls
> > > flush_icache_range(), which on RISC-V turns into flush_icache_all(). On
> > > other architectures, the actual implementation is exported, so follow
> > > that precedence and export it here too.
> > >
> > > Fixes build of CONFIG_LKDTM that fails with:
> > > ERROR: "flush_icache_all" [drivers/misc/lkdtm/lkdtm.ko] undefined!
> >
> > In the past we've resisted doing this; see
> >
> > https://lore.kernel.org/linux-riscv/20190611134945.GA28532@lst.de/
> >
> > under the principle that we don't want modules to be able to flush the I$
> > directly via this interface.  But maybe, like moving the L2 related code
> > out of arch/riscv, we should just do it.
> 
> So you are aware that all other architectures that don't have coherent
> icache already exports this, right?
> 
> Being more puritan on RISC-V buys nothing w.r.t. keeping modules from
> doing anything, you'll just end up having to mark a bunch of them
> broken on your architecture. :(

Yep, we'll pick it up.


- Paul

