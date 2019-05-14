Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCF11C02B
	for <lists+linux-riscv@lfdr.de>; Tue, 14 May 2019 02:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ovl17PviEVWS7ocXc2S+sLLg9HJq2/pqhkjz0672k7U=; b=d+VpZ+W0+levME
	2BV18Aa7a++/o+O6BeFB76QuqHxNCPbRIpkk8JjQJxdH0nQHTVet5+LuR2ZecHyeOiK5PuNlQLu1G
	9SOwcItbKnJbr6iBW3fLBncLI9n1cuXnAb/GS1bNdJb4n81KYgWJlfKi00nmdmGaTkeT6Z84BjCgO
	moKIpJ56dLSlOlMHXsm1lvktyUfSph7v+Ky1+NFGK+bP2p+az96mQB4xWYC/kved9s9n1mL8JwFFk
	qI1PqvIDRiYUSoA5DLgrEyrsWWcDDHPPZvS7lVFHEQG57WxGE556kOlQ2qUsMYmcDAP0DgsbAkYs6
	K//sUk6aHr07H8bWGeGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQLU9-0000J4-VA; Tue, 14 May 2019 00:40:01 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQLU6-0000IZ-1A
 for linux-riscv@lists.infradead.org; Tue, 14 May 2019 00:39:59 +0000
Received: by mail-it1-x141.google.com with SMTP id l7so2058835ite.2
 for <linux-riscv@lists.infradead.org>; Mon, 13 May 2019 17:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=kMZ5w85F7GQqBXnYMmtQZ+xbVTO8OslBtbOYC6aSOnc=;
 b=dIDbl08zuYEXjpcqx5vKPssywdXTZxvDMCnbtlVVbXHC97okSbaxXNZpoFGB/UovIx
 XoNy7bRb7HHziO9YZaDJxH0NKnSIMjQ+anjVkDM2z+PgnN/HRC9xUdqv81IzsDJKWChr
 K756P8PpDsujRhQqr77vMsEUI1ZULdqJ7QDQnH+geiBWrD64ANnYy9jNOVPAdTi5+ngh
 fadPDEslLEAUiySuMIlfbc8wfrZSVhxEbiE9zKtdsj/ohJZn7u4TFbLScXkiEvyHUqO8
 fDcOd0W2a2UwGMTHMw43d7np5QJOHencef/vU/jqX6rHMgAauiHTMBZaGwlof4Y+TRyX
 Jizw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=kMZ5w85F7GQqBXnYMmtQZ+xbVTO8OslBtbOYC6aSOnc=;
 b=j/y6sXfzOe5ni+PUaRgFetL7Jz55IfoLfPlQOtXGdG1qxJm/s4uKJPlVBRpTQuTUjP
 SqBC91xX67o1UL6nV5xan3w/dM+xhhxf8WB7kl3smzy6oABibV9JxmyH0HaOCUJt9/Nz
 DJFXnw5us53nH15Ij7N75MpWYrKlV5NxFac6kfMo1O4GS5MiwQ6G2xtJzgrDLs3lYe3K
 evVzAXiYadD/fFjeRZgDVir2Bo7v4MYx0K6Uxouqa6/zcxKeUnrDHqK87+qR39q62fsX
 mSc+UKPTUvl2q8a3ePPJ6WaAOWnMtZQLrwGE1JISFq+/mGWyPQC3nAsfd6pR2nyBrc7k
 FsmA==
X-Gm-Message-State: APjAAAUMFuuJ0wef+HQNDoRGt3gOcZh+i21J78FNBlPAZdjxV2OPt6lm
 Nf+rBTH0fzzYU2BbfxO6eVc+ebf6hdE=
X-Google-Smtp-Source: APXvYqx0TpHx62U3H8GkYS/wTRgE90Fw0RHn+5MFL4cRHZ+i1FZufTyt2KrESO10KRzC2lbCsu/ukA==
X-Received: by 2002:a24:2758:: with SMTP id g85mr1604621ita.30.1557794395577; 
 Mon, 13 May 2019 17:39:55 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 c11sm494780itj.31.2019.05.13.17.39.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 17:39:55 -0700 (PDT)
Date: Mon, 13 May 2019 17:39:54 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Add a PE/COFF compliant Image header.
In-Reply-To: <a3eb8e32-5344-801e-03ef-98107ed13130@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1905131735450.21198@viisi.sifive.com>
References: <20190501195607.32553-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1905131522370.21198@viisi.sifive.com>
 <a498967c-cdc8-637a-340b-202d216c5360@wdc.com>
 <alpine.DEB.2.21.9999.1905131704371.21198@viisi.sifive.com>
 <a3eb8e32-5344-801e-03ef-98107ed13130@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_173958_137347_BA178DA6 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
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

> On 5/13/19 5:09 PM, Paul Walmsley wrote:
> 
> > What are the semantics of those reserved fields?
> 
> +struct riscv_image_header {
> +	u32 code0;
> +	u32 code1;
> +	u64 text_offset;
> +	u64 image_size;
> +	u64 res1;
> +	u64 res2;
> +	u64 res3;
> +	u64 magic;
> +	u32 res4; ---> We can use this for versioning when required
> +	u32 res5; ---> This is reserved for PE/COFF header
> +};

I saw that in your patch.  The problem is that this doesn't describe what 
other software might expect in those fields.  Can anything at all be 
placed in those reserved fields?

> > > Do we need to add it now or add it later when we actually need a version
> > > number. My preference is to add it later based on requirement.
> > 
> > If it isn't added now, how would bootloaders know whether it was there or
> > not?
> > 
> > 
> Here is the corresponding U-Boot Patch
> https://patchwork.ozlabs.org/patch/1096087/
> 
> Currently, boot loader doesn't care about versioning. Since we are updating a
> reserved field, offsets will not change. If a boot loader want to use the
> versioning, it should be patched along with the kernel patch.
> 
> Any other boot loader that doesn't care about the version, it can continue to
> do so without any change.
> 
> My idea is to enable the minimum required fields in this patch and keep
> everything else as reserved so that it can be amended in future as required.

If those fields really are reserved for implementors to do whatever they 
want with them, then that might be a reasonable approach.  That seems 
unlikely, however, since specification authors usually reserve the right 
to use reserved fields for their own purposes in later versions.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
