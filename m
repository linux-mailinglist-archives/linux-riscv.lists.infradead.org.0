Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7186D172A45
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 22:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G0O9kKzyDJ9FSlQ2jKewTH9H5I8gkBrB+SkUAWROkL4=; b=oqPUnTR2ZGy/gD
	n66TGF+AJULHYeIHYDySv+zX+gx1z5bMaYlL+fcmEQc8tzVECaU0pZncpRd0xQ+DmMpIXRs6H/crN
	Jb8dGb5Sp7UgGCTfJDT12qoWHjir+eIkmIh71R6EO/w3j8ctEmh+lGkxAnMTFjN88o7ekJMDYtwku
	1VFd+Ni7fhbbipsx7EhInDZxcYnwdwMA3ocfTUkWk8WEHTHENNdGrkDGS6EsUbTSUVJzAyw5hNkop
	1QG/YAWguwPCtZsJ1HeQ8pewpMY1AmWE8XYFZKloXfdn2eqwnQxKapqfHyPOD2gs9rho32YhWBWfB
	rUMffkxlPezmxy7CEIug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Qou-0007ft-5W; Thu, 27 Feb 2020 21:35:48 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Qor-0007et-0g
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 21:35:46 +0000
Received: by mail-pj1-x102e.google.com with SMTP id e9so341405pjr.4
 for <linux-riscv@lists.infradead.org>; Thu, 27 Feb 2020 13:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=G0O9kKzyDJ9FSlQ2jKewTH9H5I8gkBrB+SkUAWROkL4=;
 b=i6EIGQ3d7rHIXjbEkBE6rwEhCCxNHaSbxeeyhAyVhLMNecrhrSo8grFcO1ufnawwGC
 MxnYxcTow9o0i3n10sgk4j3+WzbPEES0BiOKsagfPJxaYn/Tq1oUaI/4LIIjXVI+heOW
 rcf5ZDkrHAHjHrhpu9zVBFgZO5QfnoWtGND80o2Z/ICQR1ytF3SJVu++l4y9+JCsKuQ3
 hbN+svIYlICuoIwaTwFOTWw6zlogypV1hOGOG9yA3IifX9iqsqrFrGB4XvkFhUsxKLig
 dju6pTGD+0I16lkkxuUX5Xqmb0J5/SiyGYLOy5HzTPAg38uc7feDTLggdn6UVdXA6rAN
 YIbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=G0O9kKzyDJ9FSlQ2jKewTH9H5I8gkBrB+SkUAWROkL4=;
 b=HlVHZxsPKaGR0cE6Jufh1TUAs57VmUviwSG1CmBWTaUgZeyCjjqg+S0BduO0G67N97
 HQviUXZC7ZROYhvp5Cb7dg7F+tCgliqLzGaFeR9ppBPzOTA7usw2/LgkcBt7sTSmoKQW
 XBGwQ/k1iS+ga1nkJAu3SK7b0F1VU9MG4J+41rDvmyIQt2V7y0JDpJor5GSZ302op9B0
 5XCJ3TEuT8ofggo6iLiSzsTC9P1rfcf7mp7fDuSH6Ml+ngX0q5c57J2GH2EV0loD+pW2
 xeK/YjDdgMFAIklpMkpYTtsZUXmBAxs0wHTkpWzGV69qddPFFE1Sn6oNsWA/TsXQ6Afx
 z6OA==
X-Gm-Message-State: APjAAAVkQ2NyQWMxIkLUwkUt8npsC3KxU4yxqLYa05/s/mwBwDMksnSF
 UZruIFBG0xjVqIFiE1p1jj4fPA==
X-Google-Smtp-Source: APXvYqyZCGt4ClRBMdy9UUPGl4KYsS1CxF/cBzU+sMD73yyjfy0IU3zFYIVYmA3b16pdgVWQqYw9gw==
X-Received: by 2002:a17:902:524:: with SMTP id 33mr784178plf.241.1582839342530; 
 Thu, 27 Feb 2020 13:35:42 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id w17sm3243132pfg.33.2020.02.27.13.35.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 13:35:41 -0800 (PST)
Subject: RISC-V: Fix the build on LLVM-based toolchains
Date: Thu, 27 Feb 2020 13:34:47 -0800
Message-Id: <20200227213450.87194-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_133545_059683_ED42CC5C 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: clang-built-linux@googlegroups.com, kernel-team@android.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The RISC-V LLVM port has progressed to the point where it should be able to use
it to compile Linux.  Unfortunately we ended up with a few GNU-isms in our port
so that doesn't work out of the box, but I don't think the code without them is
any uglier than the code with them so I'm happy to support both toolchains.
There are still some issues using the GNU assembler to compile clang's assembly
(at least got_pcrel_hi, but there may be others).  I'm going to call those
binutils bugs, though, and chase them around over there.

While the first one could be considered a bug fix, I think the bug is unlikely
enough to manifst that I'm going to wait for the merge window for these.  I'm
going to preemptively drop them on for-next now, but as I haven't really
started building that branch they'll be rebased (my current plan is to start
taking 5.7 patches on top of rc4, as it seems like things are shaping up to be
fairly solid on our end).  If there are any comments I'll handle them as part
of the rebase, but I'd like the various autobuilders to start chewing on these.

Unfortunately the kernel compiled with LLVM doesn't boot for me.



