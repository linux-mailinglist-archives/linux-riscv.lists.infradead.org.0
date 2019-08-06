Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15DE82BE0
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 08:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSVo+l2wqNaLP0SXGJChYYW1J1d4Z8cnl2RoZEDmyN4=; b=QpfJSvJ3jRx1C5
	aHHdvS2Thfng4eRn/X4vzDjUNf6NA9ZFO1uzWnqNXP+XmFYQwZaNjCl6pWTd4V3qi1ujCq4DF3Hdl
	xPkm1Wl9D8N2Y54qGYPaurX3au8vSCp5a+7zqQbpq09tSft1t9jfbhF9gNg4KtLj2DAddAkxnRgFU
	f9NoLcBsTS1ozGa2QKeD05/p4GAcDIJo2iShIL5gPlj8u86K4E/JRvuAQ8bdZypZTA/OnREBTwROY
	jj0+NkAH8nQb71QUCy5KdaY+zW50mNewnTnxchjL6bkVCx76r2zYgL6IWosxOLLc94NC7Uwt91XAH
	6p2Bcwh07dxtNSA/BtbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hutAJ-0000At-Ox; Tue, 06 Aug 2019 06:41:47 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hutA7-0008PF-HG; Tue, 06 Aug 2019 06:41:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2564EB0B6;
 Tue,  6 Aug 2019 06:41:34 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: Random memory corruption with v5.2
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
 <mvmwofw68ji.fsf@suse.de>
 <CAAhSdy0ZPk1So_ieahn5dVaye1WajRmwkYHhSox4FcvuOuZchw@mail.gmail.com>
 <mvmmugn4sd4.fsf@suse.de> <mvmimrb4r5q.fsf@suse.de>
 <45823bccd515273e08bd2e0c634b0b207e60db9c.camel@wdc.com>
X-Yow: Don't worry, nobody really LISTENS to lectures in MOSCOW, either!
 ..  FRENCH, HISTORY, ADVANCED CALCULUS, COMPUTER PROGRAMMING,
 BLACK STUDIES, SOCIOBIOLOGY!..  Are there any QUESTIONS??
Date: Tue, 06 Aug 2019 08:41:33 +0200
In-Reply-To: <45823bccd515273e08bd2e0c634b0b207e60db9c.camel@wdc.com> (Atish
 Patra's message of "Mon, 5 Aug 2019 22:34:53 +0000")
Message-ID: <mvm1rxy4wyq.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_234135_789803_F87F883F 
X-CRM114-Status: UNSURE (   6.73  )
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "opensbi@lists.infradead.org" <opensbi@lists.infradead.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Aug 05 2019, Atish Patra <Atish.Patra@wdc.com> wrote:

> It takes more than hour to finish the full install-locales on unleashe
> board which makes it bit difficult to try out possible fixes.

When it fails it usually fails pretty fast.  Did you run it in parallel?

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
