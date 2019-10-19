Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B66DD634
	for <lists+linux-riscv@lfdr.de>; Sat, 19 Oct 2019 04:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeqIwTAIIfTK7Ts7pjz1oUab4L7jAyCwqStcld7Sy9A=; b=bW1MuK+2mIHwEE
	8U163BwluJhcxE8qnvuX8X2ivtQnXuS1LivD3QQycsuxbJVLrRCReeOSd8Y231ZposNg/oc3zx2wO
	H87rZEfrfCyzWli8TjNAwZ4JQLV1leCiy0itzAgkjIJr9ogOY3fw9V4fN15Iy0C+PqxNOsuLRkqO4
	zUUF1hBXqc2FzV0emzVLiZUGqInVhQYTRLYoATwjH/X/LzT4dijw78nmSrm1S2xNQolGxyyZG57+R
	66d57U1GDkZ6SjTgcXpWRb8R7cUSjhOlK9EOpVWi07DRrerF/2ICC8woIvHXnzKtMySmmHXpcxJXl
	MRfc0gZb1veuHgQxDhiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLeaE-0002z0-0v; Sat, 19 Oct 2019 02:35:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLeaB-0002LD-8O
 for linux-riscv@lists.infradead.org; Sat, 19 Oct 2019 02:35:08 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.4-rc4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571452504;
 bh=DVpcfNDXWIRE5HAyrvKVIZsitxJD5syg2ACwF02biBA=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=sER3u5hWII3pW118nItKqKh/+jjhzybnFKWebdb72n0td+Yuc+n5OqTZ4HswuirX+
 xDY/ZvbaRdtR8q+yGKFilQUh8Aw9Rsdz5nUV7zIaU+9axNHecJr7N6xD42CpqWuDMx
 Mrt32fzZsFJbzx2u6t4aascTyPzEdviq2IUqLxfA=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1910181634460.21875@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1910181634460.21875@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1910181634460.21875@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.4-rc4
X-PR-Tracked-Commit-Id: 5bf4e52ff0317db083fafee010dc806f8d4cb0cb
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: dfdcff3215ae4ed7975b0991243d1dd8e1250bec
Message-Id: <157145250478.6008.17888015045709727703.pr-tracker-bot@kernel.org>
Date: Sat, 19 Oct 2019 02:35:04 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_193507_329307_5C8C2274 
X-CRM114-Status: UNSURE (   1.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-riscv@lists.infradead.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 18 Oct 2019 16:36:14 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.4-rc4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/dfdcff3215ae4ed7975b0991243d1dd8e1250bec

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
