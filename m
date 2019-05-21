Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736CC2577C
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 20:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6RxGruA2WpqdOuyMl2/k8o27C/CaJEzAZmunmV8Mbg=; b=V1swYjMIXqMGp2
	/FbvJC7ujtHVYIzdq0tf/sThiziEgbsopkIaMM0P/0C/ti/uikAmzoj6qEiQ1dgHfvsrO5J4MMV/Q
	ZONtmmNQtUB23nIppa0jCZOoKYGB0JNW/IZn7rGiNuvg+8Q2dbA6jMXRALgh/ldLYjik4vosJUooA
	W/UWcw52rmIFL/yErnq9lRo+r+ayewU99AMFuJXLkueZ87uu9gPXW/D6Atz11nbaKSABnByijl2rD
	hiJHDcW+APjnjfA/dNXdk3HTKf3rNz9XlcdZXdWwHUebeT5VrAHjBiqsQ9gWHj3m3CPXJ5GILQNCu
	1jrMyDS07YmisOb3FTYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT9Nq-00082R-Sf; Tue, 21 May 2019 18:21:06 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT9No-0007vy-5C
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 18:21:05 +0000
Received: from cz.tnic (unknown [165.204.77.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 5A1C71EC06E5;
 Tue, 21 May 2019 20:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1558462862;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=KHFgAkXxYFk3wROuJ38oqfD4+nr2gZuGxXCjmm/Kcds=;
 b=RIsC4iZIDA4w2oW1aV/cdXmYt+a9pn/rD6DcJVcqFWRUR0fvqCDU/3khIzZefkdGuOPrrP
 UFKwbPRcrtkR0+edGSuEmW4qUeptTdioUPee6LNGP/6PNB6MH4vmbvhSoCncgucJqTOoKB
 uJtNsh5xRcjI2G+Gp/gsmDMNbkibaNw=
Date: Tue, 21 May 2019 20:21:32 +0200
From: Borislav Petkov <bp@alien8.de>
To: Yash Shah <yash.shah@sifive.com>, James Morse <james.morse@arm.com>
Subject: Re: [PATCH v2] edac: sifive: Add EDAC platform driver for SiFive SoCs
Message-ID: <20190521182132.GB7793@cz.tnic>
References: <1557142026-15949-1-git-send-email-yash.shah@sifive.com>
 <1557142026-15949-2-git-send-email-yash.shah@sifive.com>
 <CAJ2_jOG9Ag0spbh3YCxavUE5XEAUP1pHcgCZ56Nu2u4TqfrzHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2_jOG9Ag0spbh3YCxavUE5XEAUP1pHcgCZ56Nu2u4TqfrzHQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_112104_351233_8850A11B 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, paulmck@linux.ibm.com, gregkh@linuxfoundation.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 James Morse <james.morse@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, mchehab@kernel.org, davem@davemloft.net,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 11:00:59AM +0530, Yash Shah wrote:
> The prerequisite patch (sifive_l2_cache driver) has been merged into
> mainline v5.2-rc1
> It should be OK to merge this edac driver now.

James?

-- 
Regards/Gruss,
    Boris.

ECO tip #101: Trim your mails when you reply. Srsly.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
