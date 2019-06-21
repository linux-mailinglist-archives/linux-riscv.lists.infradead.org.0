Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE524E5E5
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 12:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URO72gdHGz83aIbG2MKsYongnw4SrGYTgDKI9PU/Q0o=; b=oeK2ns9mG2unXS
	p092486FUpwL+V/OTpYivjC1uWXbWjXG/ARCYhQcGGffTiSiZ2zIWYQXu8PmHrnq1D+f39x6rYo11
	r0wmvL7tWEZaObuplImGiHRl3wE/4VqEzhk0sRFG1Udary2Shjfu+6pjoh2oJ9BvrtbVls31ZWAHG
	SzfpD+hsWo+x/yeEdb2OFtFpwfr5Y7hdKCbF028UNGeNLuGQSE0pMH2HY+F5Kt1d8p0ynv+c4e9G7
	eABcv6QQJ15eXmRsXSk49p+tOAEoyiqsQTw39c+YJXBkr6V9oKNASpOahNQh32gs2C9pqWyBfqNWL
	sQ9R1knpi0eQgIF5kDGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGnO-0006MV-P2; Fri, 21 Jun 2019 10:29:26 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heGn1-000699-UR
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 10:29:05 +0000
Received: by mail-vs1-xe42.google.com with SMTP id v6so3512637vsq.4
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 03:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ENYQKCQSfeszZWYCN2yKfX/JBpyCK1CYVFLjD6oifQ0=;
 b=etN7QHE7JyTa4lpmcwrjRdg6TnTrZT71qn5QpWXhPeGHVs5LbKB7on5lmX86ologtL
 7XbiDc7JUkNc4+BQeGqzuFBGbVVr8ocD+vYfvpGft4Mc7w356kUy3V65LZHBdflyDdks
 pBnwhTO5D9DEj5J/u+iqjckNNj7Rc97GntY5i1S4zc6On50LZARTYCXQk/LRR36V2BlE
 SMgPRFHAm5TPfEKUQGV8T+s/54ZNmcHw0scr7/QgnsXjtHxX88yXLRu4TMT87r/wBFOJ
 mvAG7S8pio6EeqFl3vC68qkeAUBhNY/8eY1lWfcVTJ2jGeTtOnlK9TON7Lasld8xB/6K
 HjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ENYQKCQSfeszZWYCN2yKfX/JBpyCK1CYVFLjD6oifQ0=;
 b=P11zjHwgGUAsHUn4jL6kAYZjPmglQnv5f2CUD9U5XMfFvazX1g7EXaTcyXafK5x3Fq
 6T3xC2kYbS0qO829L/kxwvL/Efrg/TChalzkXIjcpepWITZZDEjbdGWY/oBaakJ+raf8
 /2rygLmLdPAaJwavSFRVapVuVXGpsjpWLYRNFSPdW8aU12/vuiRLSs0q3a8g75PVoDoR
 XAFiznVXDJAMsSB26M3WqFEXMRxJrMv2Pippjjz8Y33qO8bcP80bhw5uTkXFJ8NCWpXr
 VFSXRwvIHO6sSBCwX7WspqmPL/64NMT2sQyW/B8K8du8GP+So6u8wgAM57lr9u73F29J
 FVSw==
X-Gm-Message-State: APjAAAVPZb65/PjcdWIACQD76Duahd9VE7K348aBwgMxcahhsdkEalqO
 J0k4MFkufLOV7EAdwOgpRaFu+8WJpVTloX/cxJX/Eg==
X-Google-Smtp-Source: APXvYqyXXbRJwvoUm1/ZU9MgYql7iUjK+l3n4H+mOYUP5gGfjYQ9PO1P5xFbBOShDCcwOuvRyoqJmEPbMxH/uNId6ZQ=
X-Received: by 2002:a67:7346:: with SMTP id o67mr50970360vsc.92.1561112942493; 
 Fri, 21 Jun 2019 03:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-2-git-send-email-sagar.kadam@sifive.com>
 <325855d0-00f9-df8a-ea57-c140d39dd6ef@ti.com>
 <CAARK3H=O=h1VDgOMxs_0ThcisrH=2tzpW5pQqt0O9oYs=MFFVw@mail.gmail.com>
 <93b9c5fd-8f59-96d7-5e40-2b9d540965dd@ti.com>
In-Reply-To: <93b9c5fd-8f59-96d7-5e40-2b9d540965dd@ti.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Fri, 21 Jun 2019 15:58:50 +0530
Message-ID: <CAARK3H=CmxSG2srUaoxN1HF6W7CVKtpATrf89n6kuht2Paqp8A@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] mtd: spi-nor: add support for is25wp256
To: Vignesh Raghavendra <vigneshr@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_032903_983683_BC38F4BA 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, tudor.ambarus@microchip.com,
 Wesley Terpstra <wesley@sifive.com>, richard@nod.at,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, miquel.raynal@bootlin.com,
 linux-riscv@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Vignesh,

On Fri, Jun 21, 2019 at 11:33 AM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>
> Hi,
>
> On 17/06/19 8:48 PM, Sagar Kadam wrote:
> > Hello Vignesh,
> >
> > Thanks for your review comments.
> >
> > On Sun, Jun 16, 2019 at 6:14 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
> >>
> >> Hi,
> >>
> >> On 12-Jun-19 4:17 PM, Sagar Shrikant Kadam wrote:
> >> [...]
> >>
> >>> @@ -4129,7 +4137,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
> >>>       if (ret)
> >>>               return ret;
> >>>
> >>> -     if (nor->addr_width) {
> >>> +     if (nor->addr_width && JEDEC_MFR(info) != SNOR_MFR_ISSI) {
> >>>               /* already configured from SFDP */
> >>
> >> Hmm, why would you want to ignore addr_width that's read from SFDP table?
> >
> > The SFDP table for ISSI device considered here, has addr_width set to
> > 3 byte, and the flash considered
> > here is 32MB. With 3 byte address width we won't be able to access
> > flash memories higher address range.
>
> Is it specific to a particular ISSI part as indicated here[1]? If so,
> please submit solution agreed there i.e. use spi_nor_fixups callback
>
> [1]https://patchwork.ozlabs.org/patch/1056049/
>

Thanks for sharing the link.
From what I understand here, it seems that "Address Bytes" of SFDP
table for the device under
consideration (is25lp256) supports 3 byte only Addressing mode
(DWORD1[18:17] = 0b00.
where as that of ISSI device (is25LP/WP 256Mb/512/Mb/1Gb) support 3 or
4 byte Addressing mode DWORD1[18:17] = 0b01.

> > Hence I have ignored the addr width from SFDP.  I have verified that
> > with 3 byte address width, the
> > flascp util fails while verifying the written data.  Please let me
> > know your views on this?
> >
> If this affects multiple ISSI parts then:
> Instead of checking for mfr code, look for SNOR_F_4B_OPCODES flag in
> flash_info struct of the device and let it take precedence over SFDP in
> case size is over 16MB
>

So as per your suggestion I think second approach is a better one.
I will send this in V6.

Thanks & Regards,
Sagar

> Regards
> Vignesh
>
> > BR,
> > Sagar Kadam
> >
> >> Regards
> >> Vignesh
> >>
> >>
> >>>       } else if (info->addr_width) {
> >>>               nor->addr_width = info->addr_width;
> >>> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> >>> index b3d360b..ff13297 100644
> >>> --- a/include/linux/mtd/spi-nor.h
> >>> +++ b/include/linux/mtd/spi-nor.h
> >>> @@ -19,6 +19,7 @@
> >>>  #define SNOR_MFR_ATMEL               CFI_MFR_ATMEL
> >>>  #define SNOR_MFR_GIGADEVICE  0xc8
> >>>  #define SNOR_MFR_INTEL               CFI_MFR_INTEL
> >>> +#define SNOR_MFR_ISSI                0x9d            /* ISSI */
> >>>  #define SNOR_MFR_ST          CFI_MFR_ST      /* ST Micro */
> >>>  #define SNOR_MFR_MICRON              CFI_MFR_MICRON  /* Micron */
> >>>  #define SNOR_MFR_MACRONIX    CFI_MFR_MACRONIX
> >>>
>
> --
> Regards
> Vignesh

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
