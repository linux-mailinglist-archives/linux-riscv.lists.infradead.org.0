Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B15DF6DF
	for <lists+linux-riscv@lfdr.de>; Mon, 21 Oct 2019 22:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dDedfx27nIfWdmL30RYydJ5MGgR2lZS1rfT701K1Dvk=; b=Xhg0mNLY3dok53
	OAtqASCjcztVeBQkoTD20TCWue4NG1Ec187PWqQv6sQNKLpR5UpO8Z7AMJLdLF7Pfv1N0iEkCHRx9
	ndP3SRQNXfqbJP0yXK4fHx1uFDjjb0b68j7bJW3vEArvBeNwk86+lY2JfN1zS3qKz0Yc4xGOGglrw
	iKU+Ig1l2jFh07TSB0xAg+kBSflRYSQ8r+9E0n0Gw5Ev4uEcvNzKrKloRQRYigjt5JPY8DizNj9pi
	w90YF9hvBtGiPcV8o3J0ljAA1ckW8awmpdnVsAOslpjBHNgZhUgVsLDcFklecFsegIJo3fZYaQE9l
	lUvw3JUHIQoDPJpR5y8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMeTg-0000hG-8L; Mon, 21 Oct 2019 20:40:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMeTd-0000gm-Ae
 for linux-riscv@lists.infradead.org; Mon, 21 Oct 2019 20:40:30 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC4AC2067B
 for <linux-riscv@lists.infradead.org>; Mon, 21 Oct 2019 20:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571690428;
 bh=V4v0brNJd2LH2zZ1DwbfeUpKTG4Uw8q8vHb2R+ZUTD0=;
 h=Date:From:To:Subject:From;
 b=G2hN7Z5E6PnHqh7o8uGYeqWXxnAYE7z+058GOiNcRMG6nwITrujlOEPOAWhWFAazK
 Z6HAs65cm1gR8eqL20nm7hJf6Iq0H4NV2CRZcBz8mPzFYzsC+kvkXh7Puk1+AnW5gS
 XIvEnxVbz5AD9z5oG/FtlnkmWzoKXTiCANO79hcQ=
Date: Mon, 21 Oct 2019 13:40:27 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: linux-riscv@lists.infradead.org
Subject: arch/riscv doesn't support xchg() on bool
Message-ID: <20191021204026.GE122863@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_134029_392321_6CC86BB8 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.4 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

The kbuild test robot reported a build error on RISC-V in this patch:

	https://patchwork.kernel.org/patch/11182389/

... because of the line:

	if (!xchg(&mode->logged_impl_name, true)) {

where logged_impl_name is a 'bool'.  The problem is that unlike most (or all?)
other kernel architectures, arch/riscv/ doesn't support xchg() on bytes.
See: arch/riscv/include/asm/cmpxchg.h

Is there any chance this could be implemented, to avoid this
architecture-specific quirk?  Note, there's at least one other
place in the kernel that also uses xchg() on a bool.

- Eric

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
