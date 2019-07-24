Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B8372EF8
	for <lists+linux-riscv@lfdr.de>; Wed, 24 Jul 2019 14:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nd7cc9EPqA1SWS3eXFA0QvX1FunDdzccOihxCtjsQd8=; b=iT4GXLmFu1yTBn
	2duvTfIrWMjIizjr/rUew570V9N2Wx/cb6EV5KR/1QSaE0F/yCJ8FRgBSEzfSCezcJpfo4fh9vkS1
	Hx+AJJZgk1gVA4bZCMxYzdPWisurl+xKvkz9Ra+7cTcOP7ZMPkMvakB/nA+oHOZfea1cO4EAjfNwe
	DnRE3oPvDLzEWW/5QNKYNon3eCBKCLWU0xuQsswHgD2ZrUGSwkkXVAadP6Yz8/HPWnHD8+h8tZ4zK
	6bQzYvpIhKqvUxqTXFWo6A1Mb10lCnWoNm/eLe062qwEt+4pjzH2yPid+Ne1qaPfssWN6cc9pe/b9
	Qf2t2NvocbrBlGUvpmVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGVc-00020S-0b; Wed, 24 Jul 2019 12:36:40 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGVX-0001xe-N6
 for linux-riscv@lists.infradead.org; Wed, 24 Jul 2019 12:36:38 +0000
Received: by mail-qt1-x843.google.com with SMTP id y26so45266574qto.4
 for <linux-riscv@lists.infradead.org>; Wed, 24 Jul 2019 05:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=voVat0+SUGB52qvYfXcNdUtGtc1hBZGuRMC7BUlflBk=;
 b=OPVBip25a2WbO9ODN0MyghyJIILAB6LukDE8UAmEorbY0N4kgLUY2uNRwi3FZ94Tq2
 WVZJ27BVRqUFrwGrF7y3xRswPREKSy4ENkQABk4SMMM8MKReM5GAVLHzjRa+L0qk3ABJ
 oiMqnhzbp0/PJlMk5iRCEveK469FircUOR20RtoiHnlPymUhZmCBxeTDQcGdLBqY9U0C
 QCeLWleFpBFgm4lxQB3TLR9YLleAbu4NeFpgw94cGEwIqvbF0rK95tuKMkws8StrO+3/
 e0PZIk2OoGm6E6dK1TYc1vNFRx6SDnVY4fMxm1fKkEHEmR58mbCgEU3QOT0f4JgMAuQ0
 TzuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=voVat0+SUGB52qvYfXcNdUtGtc1hBZGuRMC7BUlflBk=;
 b=GSTuel57aT4/AGuhQvL3qeo9by3xlAbBiQpNktj07/35Cxvvp7WqSa3hLku2x5teJn
 pJkVXbX4bshbJoAKjMHf880VUSdOTsmRUdRkLOkZ/9YKeqxkc6/dxmxUpuNTceDTjhJM
 ZPMxCJGsehDl4rV/Z1GsxDyB02uEFjy1nQHZ8Yh5CozDfHogYidcj/7xWGP7bbOy08DZ
 2iHTZ81s3L9fSwQ0v3UOomQmQtcrGj3cUsemc+3xjO0yMB1pLgTUPPwhOr36+PuwIcUa
 ScjakHBnd+81wXhQF53AdNe81e7ATJFVqGesTiEKY3o/T8zEd7TCCh7d6Cisl4KwNAcN
 vjzg==
X-Gm-Message-State: APjAAAW3MGZyhraG+ziZkOzMLWy5AsOo9kPn1UAx7Vp++W5jt4atTCaN
 c+SQ0d2pSfd9UtU9q41hFAJDmX3yOSbkb++Bnug=
X-Google-Smtp-Source: APXvYqweMQQSqCE1gaCRnyucL3mpNVOzYSXi/vtTRECBlg3dbrAT8Icq4DwJgDvi+7/kFYQu2Om5YYbah/bQgvHXyQI=
X-Received: by 2002:a0c:b159:: with SMTP id r25mr57272575qvc.219.1563971794304; 
 Wed, 24 Jul 2019 05:36:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:4144:0:0:0:0:0 with HTTP; Wed, 24 Jul 2019 05:36:33
 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.21.9999.1906281147260.3867@viisi.sifive.com>
References: <1556093512-5006-1-git-send-email-liush.damon@gmail.com>
 <alpine.DEB.2.21.9999.1906281147260.3867@viisi.sifive.com>
From: sh liu <liush.damon@gmail.com>
Date: Wed, 24 Jul 2019 20:36:33 +0800
Message-ID: <CADnCVLwL0DK0Xa8FHhxCyqpJNU3Az=Xvdr3_MqA85ju_nUBZDg@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: redefine PTRS_PER_PGD/PTRS_PER_PMD/PTRS_PER_PTE
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_053635_753769_5610D2A1 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (liush.damon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sorear2@gmail.com, palmer@sifive.com, anup.patel@wdc.com,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I think the previous description is unclear, and it is difficult for
readers to understand the meaning of these macros, because I never
understand. So I submitted this patch with reference to the definition
of arm. I think this way can make the reader easier to understand, and
I also think that this definition is more reasonable.

2019-06-29 2:52 GMT+08:00, Paul Walmsley <paul.walmsley@sifive.com>:
> On Wed, 24 Apr 2019, damon wrote:
>
>> Use the number of addresses to define the relevant macros.
>>
>> Signed-off-by: damon <liush.damon@gmail.com>
>
> This patch looks reasonable to me.  But what's missing from the
> description is the motivation.  Is this a prerequisite for another patch
> that you're planning to post?  Or because you think this is clearer than
> the original?  Or something else?  etc.
>
>
> - Paul
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
