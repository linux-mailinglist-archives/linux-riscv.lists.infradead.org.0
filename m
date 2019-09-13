Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1433B26D3
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Sep 2019 22:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=ebqIPVv5AonvnGC/3gQUsqu0sadRAe9fRd9Whsbj4og=; b=JkOYftJuUPN5EUSC9fVj8Pz9R
	l8zT7B8BLZt0plWyDPjs4boI8i7ONA5t+H7Ed1nUe598yeTvRClVdirW3fQ9AJGaoyHhjJD/eNGyk
	SAPdEvXFDfjyJJQronJykm4ImM6SGi7LthiivvGe8V6AXsEIIoE+E60mUnGx7X2AYJZZE010iNhBf
	HQrpGeTNqdqyih7iSVh35eIBYBoydTh1aI7L3VKINhKJhJY4cfxsSkbTFJ5+eKJ0VPQ0lyb8OZlKU
	1BoEhFXpoFcmQqGAUjguRFxwsn2TUXhbD25bJmG7Ph/9A7hgogMVWmlS6qVEz3cXGHY3N/31cP+b8
	3BM7+/xhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8sTb-0001mJ-NJ; Fri, 13 Sep 2019 20:47:31 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8sTX-0001lu-Qm
 for linux-riscv@lists.infradead.org; Fri, 13 Sep 2019 20:47:29 +0000
Received: by mail-pl1-f195.google.com with SMTP id s17so8833913plp.2
 for <linux-riscv@lists.infradead.org>; Fri, 13 Sep 2019 13:47:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=QGt5Azf3+0XZwNWPdJzqQycZhJFLYdeBQtKL97p4dH4=;
 b=i+9zLOybd+8dd1/CiqJPkGyuyGwHX7OmH6Yun7KiaP85yoyCcDiGPiwE8EvXaZiUR6
 wg2U0Bg3FxdBUmGzB/sE35anEUM/dR92RXSc4pkAEOP9DLCkNmY/qTxq+livSvaYjqca
 STysEH5q09I3QAsudW0hGtO4swAa+lWPQt0nPzokasB5HFx+dzbQhM347DpavYLkvjMo
 7r7enVJE0jhsH2NyfnXAOZyNpRTnUKN2lizOuDp2qcxyBK6wh98RlCCEq8oojAoG5d/m
 IuFJJlKThLDp5H95QlzXLejhLJBFYXJS+iOZwrqqgScwyU5KrJ46yimPQNi7eBIZaJ5F
 w2rg==
X-Gm-Message-State: APjAAAXcKsPchb25CLeoBwuhRUg6kXBCxqsaH5ikum6zv7Vd6SXPaqrs
 Hza3bgCloDptxw6cS5s0lnB0oA==
X-Google-Smtp-Source: APXvYqxgHC7bnMvWebn0igw5sG0hxATfwRcf89UsRAG+/65idbIUiwRzPEAVH5DVpOOjajgR6iv/dA==
X-Received: by 2002:a17:902:6507:: with SMTP id
 b7mr51141019plk.37.1568407646516; 
 Fri, 13 Sep 2019 13:47:26 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id 202sm58241328pfu.161.2019.09.13.13.47.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 13:47:25 -0700 (PDT)
Date: Fri, 13 Sep 2019 13:47:25 -0700 (PDT)
X-Google-Original-Date: Fri, 13 Sep 2019 13:46:05 PDT (-0700)
Subject: Re: [v5 PATCH] RISC-V: Fix unsupported isa string info.
In-Reply-To: <20190910060010.GA6027@infradead.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <mhng-300d37d6-c3a0-461c-b843-ca9b0e2b4714@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_134727_869792_23449E70 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aou@eecs.berkeley.edu, anup@brainfault.org, linux-kernel@vger.kernel.org,
 johan@kernel.org, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 09 Sep 2019 23:00:10 PDT (-0700), Christoph Hellwig wrote:
> On Fri, Sep 06, 2019 at 11:27:57PM +0000, Atish Patra wrote:
>> > Agreed. May be something like this ?
>> >
>> > Let's say f/d is enabled in kernel but cpu doesn't support it.
>> > "unsupported isa" will only appear if there are any unsupported isa.
>> >
>> > processor       : 3
>> > hart            : 4
>> > isa             : rv64imac
>> > unsupported isa	: fd
>> > mmu             : sv39
>> > uarch           : sifive,u54-mc
>> >
>> > May be I am just trying over optimize one corner case :) :).
>> > /proc/cpuinfo should just print all the isa string. That's it.
>> >
>>
>> Ping ?
>
> Yes, I agree with the "dumb" reporting of all capabilities.

I agree: it looks like other architectures are passing info (ie, x86 flags) 
that isn't supported by userspace.  We have the ELF hwcap stuff for those who 
want to tell which instructions they can run, so it's sane to just keep this 
simple.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
