Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA56CC1C9
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 19:35:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+6F/IoP3ys/hF5GFCgSCmgz8rN+QakLwtKZSkq05vY=; b=RDJ8YLj8LB0Yu1
	wkUuZXeo9vlwEzek7ymK6yxFkyuqLNDrG692nsmd7YJZJbgcw4tOEJKImPfiZnu723ZGBflfDvaBi
	ry4hjIzTgEhT51o3SATfpSFy3zH9VFuiYgkoVt2sZc8A8+JiNxvcLrRbO680wrzH8C10JuhEYIQYM
	s/Wk4lQ88jkdnNq4bUFUvf3lWC9FeGIHd3Uh9JzFqXBw3eJGMprhdMAv6Y+6QTm5CsxtZfSJ4cwwg
	IlMFnLKwavbh38VqlHy+LbXqNnJBqCbPpnI7ply527Tl+V6Zd2BCWadZYKbYBTLajDjQLTL8H+MMS
	6FgUu4CI/MQhNYWi8Mvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGRTn-00071z-1k; Fri, 04 Oct 2019 17:34:59 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGRTj-00070r-NJ
 for linux-riscv@lists.infradead.org; Fri, 04 Oct 2019 17:34:57 +0000
Received: by mail-io1-xd42.google.com with SMTP id b136so15288778iof.3
 for <linux-riscv@lists.infradead.org>; Fri, 04 Oct 2019 10:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=v/i7XLtrzGj5HWyiPm+j5Xy1MKLob96Pn8gCzJZLO94=;
 b=DSK+ulNPfHd96JrD/Nrd6qtE+EN6h/TsM0gK3cApR11oaFbfUB6WSuksd4uKUHymWC
 5wKyCHdF1BZ8VOSpuLzNBhFFjhsws+TKQf7rjHllGb4Nk1ixVBN6x62DmdB3QS5BlvLb
 hgEQ+ZSuWPHdFtgDq+YunT+Eoex7HwOubh6vYtoQ6iRDuqL3m9lLNgIQdvODGUdmdWDe
 LX8P+/10vo6lklhnW84GH51xQ86nnLFgL1EM0Sp+pfwGWXoFHxCs65N9KYl8wHCdH21M
 0rHvEAlmxQNhGr7nZ3nIaImQyyTibpTLktiMx1AmQyxAzR8HBhoo6yixSA9JfEzlN9+U
 fg3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=v/i7XLtrzGj5HWyiPm+j5Xy1MKLob96Pn8gCzJZLO94=;
 b=CY5WeJ1oQ5YwUTYkPocD6Rkfw6Z6Ts0V0RhTBxDAYE9tk/Cs1XkePhYyqI4+OyWXJt
 o51xsroMFom89EfVXIdGACKZiDBcA0b3nrUokgDcjhSHXhyjR5ikiusgCOZVMDXy/shn
 QehLHssj0/pBxZKfoSPwpkrNye/3b25iY2Ut00m4TYIkKkiIU3l/XS0JrpRx5ffI2v1b
 2qsIQtKCQ4Pdb3EsK6ez4NnoRPqiiZGItSECgXVAHrsU/dgciETn58t6xpEBC6JhX3ay
 xb4fAj18j6dzfEsd38lasmHxmJF8L4E0rj9jmFAIYGrJ6WhhSKYsy6CLk2zOv6S62U3O
 VTOg==
X-Gm-Message-State: APjAAAWGnV99r/ZdhTBANoC2pSaBe3nfAfkgivjsrxXJLZg4u/NpOW36
 WKP0fiqWliRFTZErRLi3sSaHBQ==
X-Google-Smtp-Source: APXvYqzP6wXJnsykySCx+JZLu+IOGWw+CFG8e+IfotAKMSOUbTbbw5PQyBxqn3GhJtvI+VXxSjbE0Q==
X-Received: by 2002:a6b:3806:: with SMTP id f6mr13624530ioa.120.1570210491344; 
 Fri, 04 Oct 2019 10:34:51 -0700 (PDT)
Received: from localhost (67-0-10-3.albq.qwest.net. [67.0.10.3])
 by smtp.gmail.com with ESMTPSA id o187sm2852084ila.13.2019.10.04.10.34.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 10:34:50 -0700 (PDT)
Date: Fri, 4 Oct 2019 10:34:49 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Albert Ou <aou@eecs.berkeley.edu>
Subject: Re: [PATCH v2] riscv: Fix memblock reservation for device tree
 blob
In-Reply-To: <20190927231418.83100-1-aou@eecs.berkeley.edu>
Message-ID: <alpine.DEB.2.21.9999.1910041034321.15827@viisi.sifive.com>
References: <20190927231418.83100-1-aou@eecs.berkeley.edu>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_103455_827898_7A29D6AC 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 27 Sep 2019, Albert Ou wrote:

> This fixes an error with how the FDT blob is reserved in memblock.
> An incorrect physical address calculation exposed the FDT header to
> unintended corruption, which typically manifested with of_fdt_raw_init()
> faulting during late boot after fdt_totalsize() returned a wrong value.
> Systems with smaller physical memory sizes more frequently trigger this
> issue, as the kernel is more likely to allocate from the DMA32 zone
> where bbl places the DTB after the kernel image.
> 
> Commit 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
> changed the mapping of the DTB to reside in the fixmap area.
> Consequently, early_init_fdt_reserve_self() cannot be used anymore in
> setup_bootmem() since it relies on __pa() to derive a physical address,
> which does not work with dtb_early_va that is no longer a valid kernel
> logical address.
> 
> The reserved[0x1] region shows the effect of the pointer underflow
> resulting from the __pa(initial_boot_params) offset subtraction:
> 
> [    0.000000] MEMBLOCK configuration:
> [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
> [    0.000000]  memory.cnt  = 0x1
> [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
> [    0.000000]  reserved.cnt  = 0x2
> [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
> [    0.000000]  reserved[0x1]   [0xfffffff080100000-0xfffffff080100527], 0x0000000000000528 bytes flags: 0x0
> 
> With the fix applied:
> 
> [    0.000000] MEMBLOCK configuration:
> [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
> [    0.000000]  memory.cnt  = 0x1
> [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
> [    0.000000]  reserved.cnt  = 0x2
> [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
> [    0.000000]  reserved[0x1]   [0x0000000080e00000-0x0000000080e00527], 0x0000000000000528 bytes flags: 0x0
> 
> Fixes: 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
> Signed-off-by: Albert Ou <aou@eecs.berkeley.edu>

Thanks, queued for v5.4-rc.  Welcome back Albert :-)


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
