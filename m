Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F8064F6E
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jul 2019 02:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=930ZuggRoM1oC2tTGmjmjqK9Uz+dKpW30bk6P1ba3nM=; b=t5toSw4JCPBe9L
	3Kn65p5NehleuySBmq+CT3RVA3cZVY895jF1YOiqU3h/hjnQymhkw2sNhqH0VIghqrDUekRhtBmr3
	LetwPN2zMmfrTbBSxL/P0DyQ503exQSHlPpSTSz6/M8j01hIc9uy/zsxoO4TfaBjE1J5eJD6gUSZt
	3tNZmKvG5Mei7rou0n4WjxrRJfmA6NMGuUtmYlTvEQ6vG5vl73sAckkxDuxrjmJ/fkD29mcUn8FvC
	YlWSapaRlab9fQdmUJvl9Tv+aENS9j7ZACni2yPK7BEz7OHo32IC69oZ0/69oNar2niS3FNJW40g5
	gIDY4yuGZPqnB3i2ZB6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlMaW-0008Dn-A9; Thu, 11 Jul 2019 00:05:28 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlMaR-0008D8-KX
 for linux-riscv@lists.infradead.org; Thu, 11 Jul 2019 00:05:25 +0000
Received: by mail-io1-xd44.google.com with SMTP id u19so8598140ior.9
 for <linux-riscv@lists.infradead.org>; Wed, 10 Jul 2019 17:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ubdKGsXmNmNnrEmma+QqWUc+ucOLRj+HPkmSnpqQuV8=;
 b=htBotMQJrwsoybVJZB28UjYjxet4BUak3it6nJxmo7QAH7wBc2t28AQTwHji8TEwqV
 lEJ1V1JCIU46kmTU8Z1zYo8UhQgGw+JcvP5S7z1fLKCjPeaBh3MfYucDJAeMhtZqFL9F
 awjetkAQgrmHTZm9n1P80LsDzB8GbQxYpbE+TGjVdwAfN7TTO8YJTNMMFi+kqW46y5wK
 fOPD1hbzjf4CqbyghjrnhKhBk2UDSulSZC07u7wzr4j//tlrd1T/0FhVlAHmgptsaeZ5
 akArVtvTsKtVw3MPjxVSrUMFcjLYLZCTIl1xzTJpOVGxlGxaqR3NYH/xdsvQNzlfkDuc
 FCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ubdKGsXmNmNnrEmma+QqWUc+ucOLRj+HPkmSnpqQuV8=;
 b=bD4O8Ftl/URZmW2WbugkWnVJ7C1exNXaur2WZARE2e134waYMqV3ogLsUO1VS0t1ia
 TCXZzoV/lW/m63KxQwb6LDW/+Nbu5wWNRNZ9O0g8ud+YHYEL8j8rxQKMjeosEbo/mc22
 dz9T1vSShmrEq1lrugiAraZ9/mE/cVitFqjmM3RAF8O5KFGK2y3zCkj3CB5LHCFB3eGd
 Kvu0SGICEWYLM1M+1FNlLOihaZLTd+P9spOKpiMZBNLm2fyNo1C5Abc7VcFF9neNGKTG
 TwjXnQZ+2zsszHaJladmgUi/1BPl/OILU3hqJeIAcXVl8gk6VB0Ukymc6WAD6MCS3WHL
 WU3Q==
X-Gm-Message-State: APjAAAV9+a6EvD8gsfPMN2G06//PY4yZXr/XWNLR7oDTYjeZC6TeSZaU
 CEPGxhvYlXC0ziGIm8ABTdWvyg==
X-Google-Smtp-Source: APXvYqzI0ZGsvCJlbPuVmTX4ExXT+ybqLhdjgIDQz807wMeSW6DorWjk/uf1GNcys8zFII1ozD2WRg==
X-Received: by 2002:a6b:2c96:: with SMTP id s144mr958546ios.57.1562803521318; 
 Wed, 10 Jul 2019 17:05:21 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id p3sm4076474iom.7.2019.07.10.17.05.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 10 Jul 2019 17:05:20 -0700 (PDT)
Date: Wed, 10 Jul 2019 17:05:19 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v5 2/2] RISC-V: Setup initial page tables in two stages
In-Reply-To: <20190607060049.29257-3-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1907101703150.3422@viisi.sifive.com>
References: <20190607060049.29257-1-anup.patel@wdc.com>
 <20190607060049.29257-3-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_170523_707375_E71D12D0 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019, Anup Patel wrote:

> Currently, the setup_vm() does initial page table setup in one-shot
> very early before enabling MMU. Due to this, the setup_vm() has to map
> all possible kernel virtual addresses since it does not know size and
> location of RAM. This means we have kernel mappings for non-existent
> RAM and any buggy driver (or kernel) code doing out-of-bound access
> to RAM will not fault and cause underterministic behaviour.
> 
> Further, the setup_vm() creates PMD mappings (i.e. 2M mappings) for
> RV64 systems. This means for PAGE_OFFSET=0xffffffe000000000 (i.e.
> MAXPHYSMEM_128GB=y), the setup_vm() will require 129 pages (i.e.
> 516 KB) of memory for initial page tables which is never freed. The
> memory required for initial page tables will further increase if
> we chose a lower value of PAGE_OFFSET (e.g. 0xffffff0000000000)
> 
> This patch implements two-staged initial page table setup, as follows:
> 1. Early (i.e. setup_vm()): This stage maps kernel image and DTB in
> a early page table (i.e. early_pg_dir). The early_pg_dir will be used
> only by boot HART so it can be freed as-part of init memory free-up.
> 2. Final (i.e. setup_vm_final()): This stage maps all possible RAM
> banks in the final page table (i.e. swapper_pg_dir). The boot HART
> will start using swapper_pg_dir at the end of setup_vm_final(). All
> non-boot HARTs directly use the swapper_pg_dir created by boot HART.
> 
> We have following advantages with this new approach:
> 1. Kernel mappings for non-existent RAM don't exists anymore.
> 2. Memory consumed by initial page tables is now indpendent of the
> chosen PAGE_OFFSET.
> 3. Memory consumed by initial page tables on RV64 system is 2 pages
> (i.e. 8 KB) which has significantly reduced and these pages will be
> freed as-part of the init memory free-up.
> 
> The patch also provides a foundation for implementing strict kernel
> mappings where we protect kernel text and rodata using PTE permissions.
> 
> Suggested-by: Mike Rapoport <rppt@linux.ibm.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>

Thanks, updated to apply and to fix a checkpatch warning, and queued.  

This may not make it in for v5.3-rc1; if not, we'll submit it later.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
