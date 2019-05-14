Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C451C000
	for <lists+linux-riscv@lfdr.de>; Tue, 14 May 2019 02:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TrqEY+dRYUPubmH9SM6ZiX5ru0QNBSXQol8xBLB6t4=; b=aisyLtPUVIgicl
	3pJzKi/JlSLxR1ADN6pa4TLliaQw9gthUPeAk8peLe/vForrvOI1+rxXDioINi4Crs8ZFeSbGkGno
	R0TpVd3Cp+9F4PVI2HpyLJkpIax4TCSsREi2YdHVkzqMSnBHmbbFDwd3qT1+d0ZYdv6vW/a6GiV+f
	6hy3VbgSBxegATqyBv+5N6OGRCZ2nPl38J3SrDS2T7o5bhdLDqwQyOIpxaPXNj/PufAgqTEqc6ol5
	SLwha3cseSq+dQSCN6nnBXSamYcVUSQ5oTUPbdYdPA+xIdME7Ttbd15S6deu0TtCX8pFxPtUm5sDm
	BSBh/LkLjLb9PI0EpkqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQL0J-0008UO-MA; Tue, 14 May 2019 00:09:11 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQL0G-0008U0-Tp
 for linux-riscv@lists.infradead.org; Tue, 14 May 2019 00:09:10 +0000
Received: by mail-it1-x143.google.com with SMTP id m141so2086289ita.3
 for <linux-riscv@lists.infradead.org>; Mon, 13 May 2019 17:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=HphT3qTvq5UdCdGPdQO1TQeURllKBKA+AUqyDn7/1x0=;
 b=CP1BLuEj7GtUX8yOGSqFVWuCbXWttADOva4sWa9vu8tC6BQvUAYKviT6WDwvIM3O5r
 Etob3Moc5MxCOFv5xvTaSEOMksUNHQJg12UYNnL9s4YT/2gYGDVLSEIXAC5QOyH9j56I
 oBmx3V0G8BVII55FlQoe57BwP8YbgXNoBycnPU+oumsWNPizYDo2dOuuPDYlV9rlgCJO
 tWM3J+78NG7fMPrIFhrx9ISUolraR85pa4+9VO6nRCIisXHPHXwXqlx0DaTHDnNgm+QQ
 /iWNvE4qnxPh/+y8yl7DJcquptQItkx2Tw6yPnEA+c1B2QFWJmf5+K2ZZ635G1GEzDJN
 AlCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=HphT3qTvq5UdCdGPdQO1TQeURllKBKA+AUqyDn7/1x0=;
 b=uM1nTpnAjiBTLMtTfF+ekig88Ol4eb7Ils0mmg1ZEGvyTBeiNV8OJdzbyADNF1Zg25
 /60ISXj+NKCcr3K20bDVKEOPQuJb81Nc2WYl+qxroyrPfUNsKObgx5XIIMZ21ZG4d7dU
 N5zaXsuZsCCYJ51sE2sxno4zsopWSxC3a3HemPphxbvuCV10HwSht3TJ0oVbjnld0kGs
 Ev0haDLUaOiX5JuPAE8sSnM8tBcdKhzqp/Hx7hor4nMwvKzYH1zJKbIIEPVFg0gbZOXM
 b0P7ESBQvqj3w9uUduL05B2S2mjPOoS7ULZy5FthrPbRSyd4BCgIqZg8eax+LVkIU++u
 0D+g==
X-Gm-Message-State: APjAAAXtLTuElHdj2utt/XDnnSQ+nRSUjliTgj60AkQDXzaxeOYkILwI
 OEa/uE4uu+P5TU0WZQRXpAXr8A==
X-Google-Smtp-Source: APXvYqzHyts8OBQyxsw5e8kZG39QfbMC8l/0UaPuk4TeHRNezcNJrMMGzSEE63spk8rJ9uYAOmmJcQ==
X-Received: by 2002:a02:1dc7:: with SMTP id 190mr19786726jaj.62.1557792547471; 
 Mon, 13 May 2019 17:09:07 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 e2sm456547ith.39.2019.05.13.17.09.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 17:09:06 -0700 (PDT)
Date: Mon, 13 May 2019 17:09:06 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Add a PE/COFF compliant Image header.
In-Reply-To: <a498967c-cdc8-637a-340b-202d216c5360@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1905131704371.21198@viisi.sifive.com>
References: <20190501195607.32553-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1905131522370.21198@viisi.sifive.com>
 <a498967c-cdc8-637a-340b-202d216c5360@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_170908_974497_D6ECD923 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 13 May 2019, Atish Patra wrote:

> On 5/13/19 3:31 PM, Paul Walmsley wrote:
> > On Wed, 1 May 2019, Atish Patra wrote:
> > 
> > > Currently, last stage boot loaders such as U-Boot can accept only
> > > uImage which is an unnecessary additional step in automating boot flows.
> > > 
> > > Add a PE/COFF compliant image header that boot loaders can parse and
> > > directly load kernel flat Image. The existing booting methods will
> > > continue
> > > to work as it is.
> > > 
> > > Another goal of this header is to support EFI stub for RISC-V in future.
> > > EFI specification needs PE/COFF image header in the beginning of the
> > > kernel
> > > image in order to load it as an EFI application. In order to support
> > > EFI stub, code0 should be replaced with "MZ" magic string and res5(at
> > > offset 0x3c) should point to the rest of the PE/COFF header (which will
> > > be added during EFI support).
> > > 
> > > Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
> > > 
> > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > 
> > Seems like we're stuck with this basic format for EFI, etc.  Even though
> > we may be stuck with it, I think we should take the opportunity to add the
> > possibility to extending this header format by adding fields after the
> > basic PE/COFF header ends.
> > 
> > In particular, at the very least, I'd suggest adding a u32 after the
> > PE/COFF header ends, to represent a "RISC-V header format version number".
> > Then if we add more fields that follow the PE/COFF header -- for example,
> > to represent the RISC-V instruction set extensions that are required to
> > run this binary -- we can just bump that RISC-V-specific version number
> > field to indicate to bootloaders that there's more there.
> > 
> That would be inventing our RISC-V specific header format.  However, we 
> can always use the one of the reserved fields in proposed header (res4) 
> for this purpose.

What are the semantics of those reserved fields?

> Do we need to add it now or add it later when we actually need a version
> number. My preference is to add it later based on requirement.

If it isn't added now, how would bootloaders know whether it was there or 
not?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
