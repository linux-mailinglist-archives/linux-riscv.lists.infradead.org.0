Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBB9360B7
	for <lists+linux-riscv@lfdr.de>; Wed,  5 Jun 2019 18:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGGL73tOYFGsQRZ1HNPkjnk1s7jeprMNgLcO3PR3XZ4=; b=uCbUkiI39A+KCD
	UFZJAlpox7LUw3PAqxvuDajdfC3x3O899ULBfHMaNVgw2Z4t5wFSkD0vSw6wcb2Z8HVG4SrgpUljb
	Af9DHwLNypzySwzROavaGAz4l4/lybOJIO5jfRIvqgxDciinTgwAJog+mZ0hdbe5Ru1HgbaFYnv2l
	IMFaGtArZugtU5yo3yZ/jGAdN9fAEz8Fv8JhnCiPPwpOIJQOWiKRGWf7wW1qZxTBdQUGO4IVKKDWH
	HEkSInDNwS6oJ1RSuy51x9W97y9IV/WIWVB1LqiPMeS9hu+1vZaheV/lxVSdH9bclEDvvkrYyrcid
	ghyW1RT5T1QokcX8mp/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYLO-0007Zz-Sy; Wed, 05 Jun 2019 16:00:54 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYLF-0007Sn-7O
 for linux-riscv@lists.infradead.org; Wed, 05 Jun 2019 16:00:47 +0000
Received: by mail-pg1-x541.google.com with SMTP id 20so12637251pgr.4
 for <linux-riscv@lists.infradead.org>; Wed, 05 Jun 2019 09:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=UKzg+DCRQdvZVV0IXkzVXeynq1ptXUJceOTdTsX6Gl4=;
 b=fp3HzWJAxjvdFoCskFMW0CsmQbIUx9erbqizUvfclUhHxGf+Erb+WctD9tdHvPc110
 JcTZ1Jrj3cEXaY3oRw+lKZAxo2afB9jZNL425d6yl/xh2Q4coGKZe1nlURSRV5tNZ6i6
 6icO1zrReJmPy7Du5sTkxfslAWn6noDKs/PrMyNUtOVkwOJpkPIQe3dijIExYyfN/ZCu
 i1wSJCUH6EXOHXB1+broOTrpsq0NDHU6pZXot1zH/+qGeGZeHWd8wJmfmHx5m8lSJFZ8
 aT+E7HnrfPIakIqleI4JD6nj+pq/wnrl7M07QdrRxCNeapcqe4RkT702f9AqOz1d2G6Y
 RanQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=UKzg+DCRQdvZVV0IXkzVXeynq1ptXUJceOTdTsX6Gl4=;
 b=YVMgaA0gR/jVV0jcbhRba/rl1Epp9Hr3hD2KLErmpGAPsiuX57YA4r+bfFPXjmklSH
 MpA6+hiHjncbNAncQGJMnOJq9h9FM44LH07T5j92iaIkEny5ekF4z6VXPOohNA4IdtJX
 S6bJurZCQJolFSCtfFYF64B8y64C2mv6Roa+ZULKJ8FkWUVpl46eNmJvaXLzT5QBSlV1
 Q1HyU1NGftgMLmr4jIFjxgFcxDHGI8SxNnTNPvKwSLce/lv0LthFvx8lftGsHBCXNMJm
 r26EWTkXGcvvEatK2TinpV5gbUQ4Vxs3KR6HoEFgbspPkOmKWPpERqHvh0THKtgY4bys
 RY8Q==
X-Gm-Message-State: APjAAAUOFVQlEOUBIg04fzIspp7p+oW79x5hEEbelAj+9yCxMvEPTJ66
 B1bTngp/8DOVuF7Hc+G/+/hoJA==
X-Google-Smtp-Source: APXvYqzi9Aq/IOPhUaYi+lh6Xpc7UtaCrRzBvBPL1qB9kcuXVFYBuo3Q0o7uDyHQkyOEJiRLQ5MIlA==
X-Received: by 2002:a63:5457:: with SMTP id e23mr5607600pgm.307.1559750444418; 
 Wed, 05 Jun 2019 09:00:44 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:b195:645b:2f67:9ebb])
 by smtp.googlemail.com with ESMTPSA id a12sm21837874pgq.0.2019.06.05.09.00.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 09:00:43 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Atish Patra <atish.patra@wdc.com>, linux-kernel@vger.kernel.org
Subject: Re: [v3 PATCH] RISC-V: Add a PE/COFF compliant Image header.
In-Reply-To: <20190523183516.583-1-atish.patra@wdc.com>
References: <20190523183516.583-1-atish.patra@wdc.com>
Date: Wed, 05 Jun 2019 09:00:42 -0700
Message-ID: <7hef48ggyd.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_090045_266631_D9CDFB8C 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Jonathan Corbet <corbet@lwn.net>,
 Albert Ou <aou@eecs.berkeley.edu>, linux-doc@vger.kernel.org,
 catalin.marinas@arm.com, Anup Patel <Anup.Patel@wdc.com>, will.deacon@arm.com,
 Zong Li <zong@andestech.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, trini@konsulko.com,
 paul.walmsley@sifive.com, Nick Kossifidis <mick@ics.forth.gr>,
 linux-riscv@lists.infradead.org, marek.vasut@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Atish Patra <atish.patra@wdc.com> writes:

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
> This patch is based on ARM64 boot image header and provides an opprtunity
> to combine both ARM64 & RISC-V image headers.
>
> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Tested booti support on HiFive Unleashed using OpenSBI + U-Boot (master
branch) + Linux.

Tested-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
