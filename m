Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB322B4E5
	for <lists+linux-riscv@lfdr.de>; Mon, 27 May 2019 14:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnJ1XZHNWevSaFx7wsr20owzHd9IMLMK1KKMH6VCnLY=; b=UgCuGbYe3h3t+Y
	bxLuWjQ2hIZzSnzZIlDjHeXnWaQjq4CwYTShbqbrREz3BNp5Lh4SxTTzcThZl+UwiTN9QjhgRRNpf
	9zHgjxNv8alhOmRBsWym9xNW2CxcTno8MOia52XhejABV+tJ5qgVRDipNNSRulc97nRuhshYtagzk
	YKfQTvyuoUMdu3iAmCFn0b0pxWnXf7x3Vq0wKLjA3Xxuw6B11zFCQS4nO1BnhU7Ta9tdpv1agF5Of
	KWF1CDvO60+3LK4Ska5J+M4sds+pnNzloiJifaZR9+ZifQaNoJ7g6JyuXInVKmvQupUO7V5xTyxGm
	t+DKP+em1LdmPEKaKjkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEdZ-0002U3-7g; Mon, 27 May 2019 12:21:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEdW-0002Tf-84
 for linux-riscv@lists.infradead.org; Mon, 27 May 2019 12:21:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9F00BAF96;
 Mon, 27 May 2019 12:21:49 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
Subject: Re: 5.2-rc1 boot on Unleashed
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <8F4FB234-FD5B-4AD6-99BD-57A40A79A024@sifive.com>
 <aac8c9b2-1b8d-e87d-88a5-f13222004a88@wdc.com>
 <2818D3E3-3BDB-442B-822D-0FD221BCCA05@sifive.com>
 <alpine.DEB.2.21.9999.1905251058100.15661@viisi.sifive.com>
 <AC197BDD-8A15-421E-9F99-ADFE50360982@sifive.com>
X-Yow: Yow!  Am I cleansed yet?!
Date: Mon, 27 May 2019 14:21:49 +0200
In-Reply-To: <AC197BDD-8A15-421E-9F99-ADFE50360982@sifive.com> (Troy
 Benjegerdes's message of "Sat, 25 May 2019 13:40:07 -0500")
Message-ID: <mvmh89gdr4y.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_052154_437071_BE0B2616 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Palmer Dabbelt <palmer@sifive.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>, Atish Patra <atish.patra@wdc.com>,
 Yash Shah <yash.shah@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 25 2019, Troy Benjegerdes <troy.benjegerdes@sifive.com> wrote:

> So this would be the time to agree on what the gemgxl/ethernet entries 
> should look like, and all of this can get unblocked. What I have now that
> I know works (with the legacy u-boot) is this:
>
>                 L51: cadence-gemgxl-mgmt@100a0000 {
>                         compatible = "sifive,cadencegemgxlmgmt0";
>                         reg = <0x0 0x100a0000 0x0 0x1000>;
>                         reg-names = "control";
>                         #clock-cells = <0>;
>                 };
>                 L52: ethernet@10090000 {
>                         compatible = "cdns,macb";
>                         interrupt-parent = <&L4>;
>                         interrupts = <53>;
>                         reg = <0x0 0x10090000 0x0 0x2000>;
>                         reg-names = "control";
>
>                         local-mac-address = [00 00 00 00 00 00];
>                         phy-mode = "gmii";
>                         clock-names = "pclk", "hclk", "tx_clk";
>                         clocks = <&prci 1>, <&prci 1>, <&L51>;

That can't be right, <&prci 1> is CLK_DDRPLL.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
