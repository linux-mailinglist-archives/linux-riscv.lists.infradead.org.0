Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9B89280A
	for <lists+linux-riscv@lfdr.de>; Mon, 19 Aug 2019 17:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfqSYy0J0WpEjVI58kA4+AyucnvKrbMQsGsEm7yczPI=; b=TJnxzoQ05e5stK
	rvKVAWUTlSqIK+YM5wAmDN7kkiPgNwWmQW+LtWQLTM/63Fy2WXaFuNSgXaEFsdKCT0kH6CAv915Cz
	hJy3kIJHmObfX+I6rl4LmfxpRfWiDtE/6w6W/wC1WrqUZYI8Y7h3c81/poJS3zr0RKBKdyJ8C2dQr
	PInOIBxf1vmBfp8MIt4DGqg3ZuEGBzwFKF3ZhQb0HiZgQI2dC6qHXvYR/dz1BQAdSEGLlHl4eSuIB
	C6LOObNuOXc0kKlM3XNVn1nEKtXRwNlO17wJD2AKffr2M5JRzxkrai6SVQDeXPq6bniaq078O7iJt
	r8coE4f9KFIt7uz0sa9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjHc-00011A-IK; Mon, 19 Aug 2019 15:09:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjHY-00010T-Fk
 for linux-riscv@lists.infradead.org; Mon, 19 Aug 2019 15:09:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id z11so9099804wrt.4
 for <linux-riscv@lists.infradead.org>; Mon, 19 Aug 2019 08:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cexPhrCLObLWuEp73k9kJmodhWBwZ7DxuWqGj7qCEDA=;
 b=TjRfrMeuPlMjyuBy47+ksxr6FmfZjGkDNkXRu5/hwIyw1NlgdUHHn6o94/O+Wxoy0P
 OqwTYfWZU/kaEZ3NBy27JlqV6AOJzjmTIHTMx3qvNywoNOSAR7soXBUJa5uWbx++pmp1
 3urb9mti67/zJHeHCkgNfCPslQ33U0Yxz9huifekewmAjgfpkr3F82NhvOL4ZhMGnEup
 Uo+SMvSwQfu3EbtKP+U2QsI+msI4BgSDPcNE4WSRq6hHfBpaaLjzEiodzpm0sJCxTh9v
 N8FWjUPivsUUEZh7nB4NhK/aK25uEEhTFjPDjhYukNG2PjXrO3UyR795lTmkZxJe6/gU
 SqOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cexPhrCLObLWuEp73k9kJmodhWBwZ7DxuWqGj7qCEDA=;
 b=XT/nsNzomLNm5LzBQK9Ii6SRN3uMqmegjx6j0hCvZWjwWrotAb0N/sUUPTH671eNaj
 bUP3vLhlPJT0ccwsXowVPIDa3QHr6pVtPxVTiS/2YroD792IGsLwHv8XnxUa987g3F9w
 qq7bvdcu2mOqZOhUVNP40jWSc3TtGWKK1DYBiTSanSeMkjI9FfcYOkrQPGFLV9tZ0jMD
 dz1Y/0eAZuyN1GzyXa9SYvyVcZZ08cSZidgMVtpPnK5V66en1fi1ixv7I6L7XsM6O+5D
 juGvYsziQ0estiehZJkmVuYWzIwo/mKh3ZvSBLm872SBPX/yvzHDGJQMbAKQMPXnnS90
 +78g==
X-Gm-Message-State: APjAAAVQvpU93MAbGUiA33c9M2z84O98ejBInVHMZA8YST1Rsfi7iFYL
 VnFKNfw/kWS1Dy+Z3SdNoXBAQuULWo31w1ZVxt7lRw==
X-Google-Smtp-Source: APXvYqxV/0uOhnuxnc2R0h3qP1aT0Liq9FhY/9Gz4IWrfKiJ3gPJFTzL/OOJpQPukmL9s4TFqlCHy2g9K4TSCe3fKcE=
X-Received: by 2002:a05:6000:104c:: with SMTP id
 c12mr25030881wrx.328.1566227354761; 
 Mon, 19 Aug 2019 08:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190810014309.20838-1-atish.patra@wdc.com>
 <20190812145631.GC26897@infradead.org>
 <f58814e156b918531f058acfac944abef34f5fb1.camel@wdc.com>
 <20190813143027.GA31668@infradead.org>
 <3f55d5878044129a3cbb72b13b712e9a1c218dc7.camel@wdc.com>
 <20190819144627.GA27061@infradead.org>
In-Reply-To: <20190819144627.GA27061@infradead.org>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 19 Aug 2019 20:39:02 +0530
Message-ID: <CAAhSdy3KLCW540mLVk4F6nAqYP2dYuiGqO4FuwTD1Hra_gHcGg@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
To: "hch@infradead.org" <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_080916_600709_7DA88B74 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 8:16 PM hch@infradead.org <hch@infradead.org> wrote:
>
> On Thu, Aug 15, 2019 at 08:37:04PM +0000, Atish Patra wrote:
> > We get ton of them. Here is the stack dump.
>
> Looks like we might not need to flush anything at all here as the
> mm_struct was never scheduled to run on any cpu?

If we were using ASID then yes we don't need to flush anything
but currently we don't use ASID due to lack of HW support and
HW can certainly do speculatively page table walks so flushing
local TLB when MM mask is empty might help.

This just my theory and we need to stress test more.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
