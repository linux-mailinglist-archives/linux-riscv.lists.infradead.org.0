Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6C73A488
	for <lists+linux-riscv@lfdr.de>; Sun,  9 Jun 2019 11:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EiCQyncQ9xYynoPXcyHO+7OQFtooPR/qxBROekVk72s=; b=LLWRi+l/Di5yBv5o+Fmmi8JRa
	AaE95cFifTH1PTPsGLk3/S/qWIYpvMR9yGPw4Eo/lVby/xIhTbJwOjokxJZIYqrkWGHy6cr6s8B/U
	XukVq6RJUTRVVj7tgTMAPrjhljYOt1TdbyKjIng1s5meL0FNxK09VJ5ClguAYobsHX2Ja2P2GeayV
	EJq/7pyWqhh47XCRYUaUBANi/PHgMfyVETkGREUxQsCpnaGEOsbWgvOS9PjNC3Fgtu+efQ5uyWU0l
	Q8GpI8S9dsPtU2mrmM8lSh/FIPwsuuVF2uNBpcCSBNFafdf4vWO1lomB4bPt/2ufgiz/4WbkHFvnP
	7QpslLEGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZuKt-0002CS-8O; Sun, 09 Jun 2019 09:41:59 +0000
Received: from smtp1.goneo.de ([85.220.129.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZuKp-0000rR-HZ
 for linux-riscv@lists.infradead.org; Sun, 09 Jun 2019 09:41:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by smtp1.goneo.de (Postfix) with ESMTP id 8C61C23FF63;
 Sun,  9 Jun 2019 11:22:39 +0200 (CEST)
X-Virus-Scanned: by goneo
X-Spam-Flag: NO
X-Spam-Score: -2.768
X-Spam-Level: 
X-Spam-Status: No, score=-2.768 tagged_above=-999 tests=[ALL_TRUSTED=-1,
 AWL=0.132, BAYES_00=-1.9] autolearn=ham
Received: from smtp1.goneo.de ([127.0.0.1])
 by localhost (smtp1.goneo.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D6pB0LIdwmgn; Sun,  9 Jun 2019 11:22:38 +0200 (CEST)
Received: from [192.168.1.127] (dyndsl-085-016-227-190.ewe-ip-backbone.de
 [85.16.227.190])
 by smtp1.goneo.de (Postfix) with ESMTPSA id B273923F220;
 Sun,  9 Jun 2019 11:22:36 +0200 (CEST)
Subject: Re: [PATCH v3 00/33] Convert files to ReST - part 1
To: Heiko Carstens <heiko.carstens@de.ibm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
References: <cover.1560045490.git.mchehab+samsung@kernel.org>
 <20190609091642.GA3705@osiris>
From: Markus Heiser <markus.heiser@darmarit.de>
Message-ID: <56cd597a-9db8-b6ea-eed1-51d3bdf0e6e0@darmarit.de>
Date: Sun, 9 Jun 2019 11:22:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190609091642.GA3705@osiris>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_024155_725686_CFDC9DBE 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [85.220.129.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexei Starovoitov <ast@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 netdev@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@infradead.org>,
 Greentime Hu <green.hu@gmail.com>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Martin KaFai Lau <kafai@fb.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Am 09.06.19 um 11:16 schrieb Heiko Carstens:
> Will there be a web page (e.g. kernel.org), which contains always the
> latest upstream version?

You are looking for the HTML docs on kernel.org?

   https://www.kernel.org/doc/html/latest/

-- Markus --

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
