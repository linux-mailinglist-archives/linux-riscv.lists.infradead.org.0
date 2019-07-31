Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7817C2FE
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 15:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89wEfhbAzQhFKak2ouAPK7gc5f0eieft2/MF6JvsRCk=; b=osh9sFZL/4Tqpz
	cDpsvOTjNGVm8VvA+LoSuDpV1VFwjTzycREg738/wvzgQlJ7ZaEHXCWNqkhCxAyxD1UIJw5j7JaQc
	J1Js4NBibQqlQIomsKSE9Eg4zeQq4Yx7tPN1mzPuObRWzM1e5ivB6tnUDaSbNPDlUELMzHj92W6y1
	3A+I2ImE6sUeRdEyNFLlyCPnnsX3qAKqYTl0xXEiE8ua0nrQ+uv5SaXrMHRQ81J0Zn1KpSKuwYXZ3
	VujKMn0y2ZCP8Xq11NQVAj8yse3nM+5Jo6tyZdI6NNyj2BIXBK03Xo6EQf9J50b8vKXViN8tPlF76
	Z5md4SKVGQXmU2FD1a3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoNW-0006aA-An; Wed, 31 Jul 2019 13:10:50 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoNT-0006Xx-Vt
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 13:10:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3E084AFAB;
 Wed, 31 Jul 2019 13:10:45 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
Subject: Re: Random memory corruption with v5.2
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
 <mvmftmm8q10.fsf@suse.de>
 <4E88AE22-DBAC-4EA2-AA42-CA5EA7ACB233@sifive.com>
X-Yow: I LIKE Aisle 7a.
Date: Wed, 31 Jul 2019 15:10:44 +0200
In-Reply-To: <4E88AE22-DBAC-4EA2-AA42-CA5EA7ACB233@sifive.com> (Troy
 Benjegerdes's message of "Wed, 31 Jul 2019 07:57:37 -0500")
Message-ID: <mvm7e7y8i3v.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_061048_168535_2CC02EE7 
X-CRM114-Status: UNSURE (   6.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jul 31 2019, Troy Benjegerdes <troy.benjegerdes@sifive.com> wrote:

> What are you using for filesystem/storage?

NFS.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
