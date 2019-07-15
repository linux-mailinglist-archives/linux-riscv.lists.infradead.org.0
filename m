Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCB769B0F
	for <lists+linux-riscv@lfdr.de>; Mon, 15 Jul 2019 20:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUFG3sO0v81lxOL6mn4ateyoa/Cj9KISJ6WSB9YOrx0=; b=WXlV8LH4YEbseo
	ytPFvL6fMuWV1qheCY5uJqhk4P+a5+k1oX7MYOwB/o5zhnCsGjvUTU4xxGthuAI+LoJasFesUjMsU
	evEowDkPhGa/OpqYIfap23BdwVNqzIzlrmVaJbC7kT8lCk+Z6WFSjQXCpc6f1u/nUcV2OPwQQFnp8
	vdqrRLg8NpGio8FBuoa5mtIp+4PH1G4qBHmtXCfoK30qypx5IgB7h8J42ejR6JHRUINqAdgqV+j/i
	THXw3Q/oMNF7VosvyOtfNxuzZqSRVZMvrWFFZRYp56qRvIjdZVRmIQf5aAXB793zKZnjOwymx5tG3
	BfGezZ+Xi8syzxT0Uedw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn69X-00038O-87; Mon, 15 Jul 2019 18:56:47 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn69T-00037b-1w
 for linux-riscv@lists.infradead.org; Mon, 15 Jul 2019 18:56:44 +0000
Received: from [192.168.1.110] ([95.118.111.244]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M1q8m-1hktDo3NW4-002IRt; Mon, 15 Jul 2019 20:56:28 +0200
Subject: Re: [PATCH 4/4] debian: add generic rule file
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>
References: <1562664759-16009-1-git-send-email-info@metux.net>
 <1562664759-16009-4-git-send-email-info@metux.net>
 <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <5af9db32-2cf5-10ba-261c-e08852d0814f@metux.net>
Date: Mon, 15 Jul 2019 20:56:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:hvK93i77vK63kJTVR4ogArNlnN1zGWCxPx9UupprhwHlVosg/v0
 j0b/K8jOzkk8IQGd6zTvTXIttqpqPDOa/vQJ6K+lweiKpu3XTPCF1PsDfD+FpzvZ8ILX0Dd
 0h1xeqWSatCfp11/Q+2oKS663Zba5LW9n/+DoaJo2PHehzwiq6gWu/VefhpY+8VmkQzk/Nh
 IHWiacfDp8SZkIlFOYBoA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:T4r/34V3t5w=:2rgr2ucWxg6EpGWRp2svKn
 U/llQSqutZffji1Y8HCfGG1iiOz+u6KFT0IuJFO30ifmk3PaofKKmuEY4PWGfclsHupikXcvj
 /WAxt3yfidQ9sgUSfMInSbGS4x4COeTwMmYxoiLykImPGUxfehOsSEsrRyC3IultacUimaeBu
 2OpvAGJWblV1cMCmTRRYWmjIZHDYdR33iyoCM6IS1c14ikVwmtw+nQPGRJr/1UbutG/gEsdok
 xaIG3jzezjviI1Op/sM/PjFsp7jLN7PQe3f1hGidripJKFdoo8HlNTE2LKX7jcextl73gHvE1
 uzL0xyhCzNuvu9szCJfhDYuA6W7TYk3NXGiTA4h8Su34UXNQ7g7HFZabw50pn7aAk6A6VP2QR
 4mSMwBkAVn1S4g4ZDmTi3ft5hVO6jhx8WhkpFYkRzwTXm8YEPT5yxb1Ji7ESlE9mPNGCqP12/
 d7rejThQzZZjz24LuHoc5Bj+/dWK8DKrUhHGtcVLtIpFW3ONdoxEyzNR0amq+LabkcgKnsuW6
 E/5C6l8Lwn90gIVvAHbxaR9OkJUFhXBajOxriYFSfuQM5b++BZOifD5YnimBQn88bWY4RWZic
 0AG5MDj0fs8MCTym1ZOX2Z7DAtu0QzEpox/8Sh6lbYKKJfCOcjWnEWbSHPf3HI5huNTVA87Do
 CkAhQtNiaVP1GfIkR7oGs+Ng/FUP1SFjOz3WBW7NWh48Q4Wotgt2gfwPEj8N8mSegQa3f5GYu
 D8W7h6UiPOuIDZnaJwpBzsc4UK8uoto/4Mt8RibCun/1XFKSKKFnzOXdnqQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_115643_394346_5A878BA0 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joe Perches <joe@perches.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Robo Bot <apw@canonical.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 15.07.19 14:28, Masahiro Yamada wrote:

>> The rule file contains a rule for creating debian/control and
>> other metadata - this is done similar to the 'deb-pkg' make rule,
>> scripts/packaging/mkdebian.
> 
> I saw a similar patch submission before, and negative feedback about it.

Do you recall what negative feedback exactly ?

> Debian maintains its own debian/rules, and it is fine.

Not for me, I don't use it - given up trying to make anything useful
out of it. It's extremly complex, practically undebuggable and doesn't
even work w/o lots of external preparations.


--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
