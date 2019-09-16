Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C84B413E
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 21:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klLHY7tSHn38aqU2KW7y4EB+cBu7e7ENi6Hanrr6bCI=; b=COxA0/DQYm5CTp
	XQDllgY6tnhfebjrZI2OoZKK9Gb9u8T50jmQLfi4/JcoMS1WyVhPJcp372rPVsZ5iGxzAiPQYCYf0
	6Cco7L0hoGwKlF/XFZtTwKSvvr2YTeRHQSIQwqXxf4krrhQO7YgsyF4kyPgWrsfrW/hIrbVa/4a3O
	W8lpe3dvGhJfAIldFhy3aNLfFrF3aBOYaKFagPU+RE5jcGzk4A8PvJIyqNj0QzSVG8eHFu8Ljqxsd
	QkTpSQrpjJWkruMStaLFUHW0rC+Xbk29Pk9o4UPew1z0WM0F1drRx86uf9qPceFkKZjngOyg6iu47
	y6zV7/YmS5LdcPFJZMow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9wrG-0001d7-8z; Mon, 16 Sep 2019 19:40:22 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9wr8-0001bq-ED
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 19:40:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4FD96AF6B;
 Mon, 16 Sep 2019 19:40:12 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
References: <20190916064253.GA24654@lst.de>
 <mhng-671404fb-c86e-444a-86fb-b1ba027b1c36@palmer-si-x1c4>
X-Yow: Okay..  I'm going home to write the ``I HATE RUBIK's CUBE
 HANDBOOK FOR DEAD CAT LOVERS''..
Date: Mon, 16 Sep 2019 21:40:10 +0200
In-Reply-To: <mhng-671404fb-c86e-444a-86fb-b1ba027b1c36@palmer-si-x1c4>
 (Palmer Dabbelt's message of "Mon, 16 Sep 2019 09:12:09 -0700 (PDT)")
Message-ID: <87ftkwdo85.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_124014_620025_8953F775 
X-CRM114-Status: GOOD (  10.73  )
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
Cc: Greg KH <gregkh@linuxfoundation.org>, jslaby@suse.com,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sep 16 2019, Palmer Dabbelt <palmer@sifive.com> wrote:

> On Sun, 15 Sep 2019 23:42:53 PDT (-0700), Christoph Hellwig wrote:
>> On Fri, Sep 13, 2019 at 01:40:27PM -0700, Palmer Dabbelt wrote:
>>> OpenEmbedded passes "earlycon=sbi", which I can find in the doumentation.
>>> I can't find anything about just "earlycon".  I've sent a patch adding sbi
>>> to the list of earlycon arguments.
>>
>> earlycon without arguments is documented, although just for ARM64.
>> I can send a patch to update it to properly cover all DT platforms
>> in addition.
>
> Thanks.  I've kind of lost track of the thread, but assuming that does the
> "automatically pick an earlycon" stuff then that's probably what we should
> be using in the distros.

Except that it doesn't work.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
