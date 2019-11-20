Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B731035A1
	for <lists+linux-riscv@lfdr.de>; Wed, 20 Nov 2019 08:52:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HaQYYghaPln88Iqf53XQCKast/QDa4QbGkXjyEsjmeU=; b=okjE/qTHwp8oxh
	IPn0gL/6aRR5zoM9TDLgxurDKxmZLgYw4UrHqL68dJk6KM+9zaMZCRdPV0MJ7i2gmoXtkTF3vBVYD
	ZlRD/g/R3n7Azy7QkI0p7nmF2sO8CRB3ArwvRQnNKmDphKQjhMF6cOG8p6ct6PEOHCeYHw9Xr5cKg
	aBx3jt2GMX2QY7YAM4gW94C9DiclbQKfmMG/C5aXvG/FSPg5fO1aIqCzYWwRVd3kWXfKuGfYYxGGc
	bjSCVaxTj71+HTwLcijuRZp1CF9TvXWkLmlu4WYrRzkbg6uffOA8z/YNVYHqLvt0vko05OQ8GvtLT
	J62FSW6s2dOgs0XiflIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXKmT-0006sc-Da; Wed, 20 Nov 2019 07:52:05 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXKmO-0006rP-RA
 for linux-riscv@lists.infradead.org; Wed, 20 Nov 2019 07:52:02 +0000
Received: by mail-il1-x144.google.com with SMTP id r9so976395ilq.10
 for <linux-riscv@lists.infradead.org>; Tue, 19 Nov 2019 23:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=6RukAU4yfanIMPunVIfuS2B5y73IXuIqDOCI0UMmxkk=;
 b=PVO9AuwSNDQnHRLBSNzM0TSp1Zp1SdvCGoDnpyhmu7WVv0zg4E3qxBP4Ve8/VNVG/L
 BJmtp+MAp8ki3sJjxVhqCnYJUW3LpbQPAm1HaL9HR3wJXMRgD4/iSvOifSbhpC6diMhi
 r3+Oa7d3zgcFZ4mXlPNh7SlvSrOqWurTkEbpC2SQId3okyPF7qjTOnKhCUqT97c96TI1
 4qtDVgfX49hd739zROfni6i/j3qulUrIk78hpZ51UVpieMlW2GGzTtHCtxDkLrUluVHL
 xB0JPsoUmT/qRMPc9f7NUhpxDibstRYWiLpPC7tEkaOOLYe+0eAutu6AFiXn8s82sA/w
 N90A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=6RukAU4yfanIMPunVIfuS2B5y73IXuIqDOCI0UMmxkk=;
 b=ewNA80JPs8kWR8/ruUAU+cb401O2YF3ExevOIZcFca+YDteLJw48ZJiq3t0kbfXilR
 qwIHbsn6nSsvM+OwcRwPOMGTW+vK5zUIOI3gyhI/cYryeb2SYKL8VGDyfmKm9rHmma1e
 cbnSpcX6jTKswl/ZZQ0On9RxvkTL9TQJlFad+cMJ/mDoXyXx1yUw16MYapDxxX0BUIII
 xtMAfuYjyXxyIxHuBceLX3F7gHeFehTWoI/kRDxMQ2tfkwNvvHPAve4IESamvSjMC6Ze
 gjP53E90HkBR9XuV0j12X8jpwOdWoQ5SqzQfh3SxmNlbgQj4U5OdLeXNL+W+ngpYvrfq
 Bz1Q==
X-Gm-Message-State: APjAAAVCr3GT//986okKOrbrzFMi2OwB6FPV+NnKFU7bJyBQLIcKDdud
 K3ePq/SoYG6WB7WPX7XuzgHuGA==
X-Google-Smtp-Source: APXvYqxyj22gfdW5UAgMeF5MFaHfqP5hvYnwkk6L0UAliggkFBPMDJLq5pqDqo0MB5NpTRnfUdsUjw==
X-Received: by 2002:a92:7e18:: with SMTP id z24mr2049781ilc.276.1574236317557; 
 Tue, 19 Nov 2019 23:51:57 -0800 (PST)
Received: from localhost (67-0-26-4.albq.qwest.net. [67.0.26.4])
 by smtp.gmail.com with ESMTPSA id f2sm4719623iog.30.2019.11.19.23.51.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 23:51:57 -0800 (PST)
Date: Tue, 19 Nov 2019 23:51:56 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v3 0/4] Add support for SBI v0.2 
In-Reply-To: <20191118224539.2171-1-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1911192344560.12489@viisi.sifive.com>
References: <20191118224539.2171-1-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_235201_004030_976D44FC 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Jonathan Behrens <behrensj@mit.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Mao Han <han_mao@c-sky.com>,
 Gary Guo <gary@garyguo.net>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Atish,

On Mon, 18 Nov 2019, Atish Patra wrote:

> The Supervisor Binary Interface(SBI) specification[1] now defines a
> base extension that provides extendability to add future extensions
> while maintaining backward compatibility with previous versions.
> The new version is defined as 0.2 and older version is marked as 0.1.
> 
> This series adds support v0.2 and a unified calling convention
> implementation between 0.1 and 0.2. It also adds minimal SBI functions
> from 0.2 as well to keep the series lean. 
> 
> [1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
> 
> The base support for SBI v0.2 is already available in OpenSBI v0.5.
> This series needs following additional patches in OpenSBI. 
> 
> http://lists.infradead.org/pipermail/opensbi/2019-November/000704.html
> 
> Tested on both BBL, OpenSBI with/without the above patch series. 

Just based on a quick look:

All of the patches in this series add warnings reported by 
'scripts/checkpatch.pl --strict'.  Could you please fix and repost?

Also: could you rebase these patches on top of the current RISC-V for-next 
branch?  There are some significant conflicts after Christoph's nommu 
work.

We'll wait to send these upstream until the SBI v0.2 spec is frozen, but 
in the meantime, it'll be good to get these into the experimental branch.

thanks,

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
