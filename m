Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D33B812D4
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 09:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fSAKnV1ZpjPXMwW1A2Rxw4UJ8AuXSJf2LxxSj4QoRQ=; b=A/HlhokAGdQWl0
	KtAhKF7WcVkde35jlpz5GGRV7LKAhekwe9wnGB6ebUqWlkHtB+bmKECeNuLdxThREBbrgGdgcjFzK
	SQJ9xKD7s9K52jEjJ0pOJwo6IY0lUpDIBbERPJssnRss55BbBVbquXPr33qNjOzOH8vnklKGmvbJw
	vY4BvunQD/7jHeQcafjJvjyRScPqvG8LzWTYENyj1ZeKxNZ8ZVrfCNfLJyxEoJpKhp4VhWv6zKsVB
	TIm1MUiZ4Ui7N9V0/wW2lJiWuhUzDmsYrgl2ChvzTsHWylTHDMK2nObdJtwqNtwGst2CPecyGq7dY
	nlDgf9m0aTSb80fwW68A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXBu-0002xv-Tj; Mon, 05 Aug 2019 07:13:59 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huXBr-0002xa-31
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 07:13:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3CEC1ABF1;
 Mon,  5 Aug 2019 07:13:51 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: Random memory corruption with v5.2
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1908020022400.11222@viisi.sifive.com>
 <87ftmjvkg9.fsf@igel.home>
 <alpine.DEB.2.21.9999.1908020853120.9827@viisi.sifive.com>
X-Yow: ..Are we having FUN yet...?
Date: Mon, 05 Aug 2019 09:13:50 +0200
In-Reply-To: <alpine.DEB.2.21.9999.1908020853120.9827@viisi.sifive.com> (Paul
 Walmsley's message of "Fri, 2 Aug 2019 10:32:33 -0700 (PDT)")
Message-ID: <mvmo9145bkh.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_001355_278625_ED5A8373 
X-CRM114-Status: UNSURE (   6.10  )
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 David Abdurachmanov <david.abdurachmanov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Aug 02 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> Do you still see the failures if you only run the above commands, or does 
> the failure only appear with install-locales?

Only during install-locales.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
