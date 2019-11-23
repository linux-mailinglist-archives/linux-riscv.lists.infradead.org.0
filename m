Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E347107C8A
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 03:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SWm+MOa5j9xCsuwMjvOYoF2PwAeRzNDFzOzRDf7B3EY=; b=lauzeze8Xe3+gA
	WYZ3SZGnbrbJmKNCK4cTS61wTy/AfLNUlWNLPE4ivrrkzucVKH1QkQxM3zDa/mTwuww+mT1Q5HSCU
	IZj+rlN0PhLQp3ZJFo2c1XZmjALT1SavBmzwodR/Nn6gAWZ19TBJBPpMYfBJf4BiPyK8MQqVU/TvF
	Uu3UIfIURubjMgcG53HhNnx56oxwMYZiPOexn3ssx5gfw8kqnGSIjWdN5ThXOVdMrYhBBhc4KMwg4
	yPfcqnBtYwLwsYuq8cx8SYM+gBWoHxQ/pK6BAaH78Utw2va7ayfuV31Bgx0akGnCqwt5jMCfxKAKX
	EFRRFKceNZpjhUOpMSLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYLPm-0007JS-Aq; Sat, 23 Nov 2019 02:44:50 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYLPi-0007J0-MJ
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 02:44:48 +0000
Received: by mail-il1-x143.google.com with SMTP id p6so9074039ilp.1
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 18:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=7g/Y3wR5gVZOwog74zMjqNNgFW5KdBsIY/ptyys6DJE=;
 b=aBHRxzwcxFQNrfM9pZLRT4ER5wxGCxmHVr4QWLCAj0lXXyLePykza3DWEfRn2xTjtb
 DbzrSsje9VHZpAfkiZBKWJ6rg2zn+5ujIq3RxemUuIzVN832GWoXfPeJj/JePleSXGZW
 BwzmjDsqiWOyYwXaQuTbSNok8IL/qPFuHXHeJQ3UiEgOd4h7iWn3zarnNLQwgTw92RSV
 hC2069cqB57RCKP3Z8vg7rw5QIYdXwMhWIxSuznScJCJWoS9y0eE+FzU0UKZXq5Tk94Z
 1dTUEgBLtqwoRIgKcmEKpru0HVAPe0Q3x73efiQ+7Wkbpkvo25iYguHhLGem8et3HB5E
 H1LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=7g/Y3wR5gVZOwog74zMjqNNgFW5KdBsIY/ptyys6DJE=;
 b=smDM7Ie6H7PnVS6JtGaNyn++82CX0OFrUk0v3gyxQDfPM/Xyr5yHFLJ8UXUbLWqjrJ
 gK88GgFkuP9/34RpHR9iiphOgp/4w9Py/7rDmKUT6Pjm2opY0vl5qKrWUX/gbM7JQFMN
 qbPwfAt+AWPwp1cyEtWwqyxE2mv+tXCYNIyid5ju2QXcLfhVuY7LIV8P6s1cAN7aPYCw
 m9PQJRxssRLRj5eLZLv5Q5CFA3S/1AP9Ia6UC3baVlCq0Xr7pzV7dcw8svMh37gwJZUT
 GQDgMBw8CjD/H3VRxSei5YOXJSkcqSt0tukIClpNZ9EWEIlMe0LZbx7raXCKnBNuLJCm
 d0og==
X-Gm-Message-State: APjAAAXRaYHN37GPwA5r40D6AuGkxWZu+Qw08Y1miBi811h8GGbyIKvl
 a4l6J7XaxI9bBZR3cue0jkZm3cZYvtg=
X-Google-Smtp-Source: APXvYqx+rLljVRhSTLXDzWQSdfPi1a0ZZ07AY/mQyuSP3TF8FbIDJWJeh1aiWBGMfCOa4b4vzbLGMw==
X-Received: by 2002:a02:94e9:: with SMTP id x96mr2440290jah.68.1574477081696; 
 Fri, 22 Nov 2019 18:44:41 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id l63sm2783843ioa.19.2019.11.22.18.44.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 18:44:41 -0800 (PST)
Date: Fri, 22 Nov 2019 18:44:39 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: [PATCH] Documentation: riscv: add patch acceptance guidelines
Message-ID: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_184446_759653_5EE662B8 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 corbet@lwn.net, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 palmer@dabbelt.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Formalize, in kernel documentation, the patch acceptance policy for 
arch/riscv.  In summary, it states that as maintainers, we plan to only 
accept patches for new modules or extensions that have been frozen or 
ratified by the RISC-V Foundation.

We've been following these guidelines for the past few months.  In the
meantime, we've received quite a bit of feedback that it would be
helpful to have these guidelines formally documented.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Krste Asanovic <krste@berkeley.edu>
Cc: Andrew Waterman <waterman@eecs.berkeley.edu>
---
 Documentation/riscv/patch-acceptance.rst | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/riscv/patch-acceptance.rst

diff --git a/Documentation/riscv/patch-acceptance.rst b/Documentation/riscv/patch-acceptance.rst
new file mode 100644
index 000000000000..2e658353b53c
--- /dev/null
+++ b/Documentation/riscv/patch-acceptance.rst
@@ -0,0 +1,32 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+====================================================
+arch/riscv maintenance and the RISC-V specifications
+====================================================
+
+The RISC-V instruction set architecture is developed in the open:
+in-progress drafts are available for all to review and to experiment
+with implementations.  New module or extension drafts can change
+during the development process - sometimes in ways that are
+incompatible with previous drafts.  This flexibility can present a
+challenge for RISC-V Linux maintenance.  Linux maintainers disapprove
+of churn, and the Linux development process prefers well-reviewed and
+tested code over experimental code.  We wish to extend these same
+principles to the RISC-V-related code that will be accepted for
+inclusion in the kernel.
+
+Therefore, as maintainers, we'll only accept patches for new modules
+or extensions if the specifications for those modules or extensions
+are listed as being "Frozen" or "Ratified" by the RISC-V Foundation.
+(Developers may, of course, maintain their own Linux kernel trees that
+contain code for any draft extensions that they wish.)
+
+Additionally, the RISC-V specification allows implementors to create
+their own custom extensions.  These custom extensions aren't required
+to go through any review or ratification process by the RISC-V
+Foundation.  To avoid the maintenance complexity and potential
+performance impact of adding kernel code for implementor-specific
+RISC-V extensions, we'll only to accept patches for extensions that
+have been officially frozen or ratified by the RISC-V Foundation.
+(Implementors, may, of course, maintain their own Linux kernel trees
+containing code for any custom extensions that they wish.)
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
