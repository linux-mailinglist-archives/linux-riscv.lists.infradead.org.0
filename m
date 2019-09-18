Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B631B618D
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Sep 2019 12:39:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zT57u4Ztu2qWGOWapO5gLMg4daHAjQ9pjzu6bi6Zlfg=; b=b0XdDlC79z1+mJ
	rx94hjQkMCqyexCvIA0s1OeZlWAVvUZYcfEaflyp/6METczEYICQ46ZjGVlNoxYSgLAaqY2abznEb
	WNBKS0c+C/mLxRXE7DWYfeE+bevJxhy2iYNbPE83hsyPfP5AV8eIZ+pH8wcqUbuS3+99NV/dM6YUW
	d87AcoRuF4UHnFvWWc3nF+am78mF3Ta6Vj/sV/JsgfYp5oCAjVYbrdtdzk2nBbQl1nlhPKlcuqWEW
	sq9zT41etka8QMhlmi6uiGdXpvS1Bkc6hR/CtM7eKDRAgqZVAHlf4OKGUXT2STJP6Mm6rSr4e2y1j
	d9Mq5HWLGRtTA+IAeGgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXMq-0005vJ-8K; Wed, 18 Sep 2019 10:39:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXMl-0005ub-3t
 for linux-riscv@lists.infradead.org; Wed, 18 Sep 2019 10:39:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id y5so4144562pfo.4
 for <linux-riscv@lists.infradead.org>; Wed, 18 Sep 2019 03:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PJMTj/Fq70plK6xajf5o6p+A1XUkzJJscq2WFg4Ok1g=;
 b=DOnXq/J274NOWRNt1DTh/uPChnrXdFihmCSYcMmvTR3F5sIF+5JU3PBEyH0UObAUCY
 rHI4PA/azQA+0lFnPqx5pZUjyVOmGPdE4qNRPR6A9nGVKXaytQMXT2bbpywkcpc8WZUW
 N5nlrUbLa8eVJtUGyQb5cSCEPadblD/PbsW6O7ajoALlDrFBavFGNXcZZ2oeyumOpRSe
 2UNzbRSwRXbi9ccsqKI931OZJf6ZtqmZO+gNVI3Gal1pk5RoUjLcuo8lYiZwvhrOVejK
 Vw4M6SN6zBG34yV4l/r/p2APdt1mdGc7KZWQ07as1lPEiTYGQudUQDys3byry8JjSuwJ
 I+YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PJMTj/Fq70plK6xajf5o6p+A1XUkzJJscq2WFg4Ok1g=;
 b=ma0T3LWk4ImSNx+LcLhgFaUZBJllbPvpxJnrYnGxNb6TfMStNJFrh07BOIEsJxYXuu
 8IXx5oadOskeTZvL3iUPH+R1Xa5hgQ3VpS/5q5AneWxOtj0UEM5SvzFcfpymuWz7S30O
 siJsjC96/sA10hQ/Fooz6ZxPLcYQFVv6UcYsSotdJLRVNtOGApibc3RKcSKJBB1RXjDd
 HFfJU0HsM+cJJPXrLn579bsbxdhebwyz7Ah2MoVZ4oLb066Z+Xh/bjt7Fx1YS++8Tpn5
 bx+woZl/HjwTRDVOnw6LMGjCMVXc4OzaqXVRUxldAVChBJqR0do1X27LUOidSuN2kuJE
 TcHg==
X-Gm-Message-State: APjAAAXj1dcybBE4vksOZyNC3o1IIW63VIkhbfe5GRDqOxZMpJiJw197
 027Op7NTygzj8n5gyFLH8AHA3g==
X-Google-Smtp-Source: APXvYqwT7yE8ZvtiPNDu0qZs9cEmt2AKc8FFBPrLCdbKTMHPu+9h5U5gAJn9fIaC/1yIDkmIDWiqtQ==
X-Received: by 2002:a17:90a:a6e:: with SMTP id
 o101mr3072132pjo.71.1568803157898; 
 Wed, 18 Sep 2019 03:39:17 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id 31sm5751587pgr.55.2019.09.18.03.39.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 03:39:17 -0700 (PDT)
From: greentime.hu@sifive.com
To: greentime.hu@sifive.com, green.hu@gmail.com, paul.walmsley@sifive.com,
 linux-hackers@sifive.com, palmer@sifive.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] RISC-V: Fix building error when CONFIG_SPARSEMEM_MANUAL=y
Date: Wed, 18 Sep 2019 18:38:24 +0800
Message-Id: <20190918103825.8694-1-greentime.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_033919_190310_0687397C 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

RnJvbTogR3JlZW50aW1lIEh1IDxncmVlbnRpbWUuaHVAc2lmaXZlLmNvbT4KClRvIGFkanVzdCB0
aGUgcGxhY2Ugb2YgVk1BTExPQ18qIGFuZCBGSVhBRERSXyogZGVmaW5lZCBsb2NhdGlvbiB0byBs
ZXQgVk1FTU1BUF8qCmdldCBpdC4KCiAgQ0MgICAgICBpbml0L21haW4ubwpJbiBmaWxlIGluY2x1
ZGVkIGZyb20gLi9pbmNsdWRlL2xpbnV4L21tLmg6OTksCiAgICAgICAgICAgICAgICAgZnJvbSAu
L2luY2x1ZGUvbGludXgvcmluZ19idWZmZXIuaDo1LAogICAgICAgICAgICAgICAgIGZyb20gLi9p
bmNsdWRlL2xpbnV4L3RyYWNlX2V2ZW50cy5oOjYsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2lu
Y2x1ZGUvdHJhY2Uvc3lzY2FsbC5oOjcsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUv
bGludXgvc3lzY2FsbHMuaDo4NSwKICAgICAgICAgICAgICAgICBmcm9tIGluaXQvbWFpbi5jOjIx
OgouL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGd0YWJsZS5oOiBJbiBmdW5jdGlvbiDigJhwbWRf
cGFnZeKAmToKLi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BndGFibGUuaDo5NToyNDogZXJyb3I6
IOKAmFZNQUxMT0NfU1RBUlTigJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rp
b24pOyBkaWQgeW91IG1lYW4g4oCYVk1FTU1BUF9TVEFSVOKAmT8KICNkZWZpbmUgVk1FTU1BUF9T
VEFSVCAoVk1BTExPQ19TVEFSVCAtIFZNRU1NQVBfU0laRSkKICAgICAgICAgICAgICAgICAgICAg
ICAgXn5+fn5+fn5+fn5+fgoKRml4ZXM6IGQ5NWYxYTU0MmMzZCAoIlJJU0MtVjogSW1wbGVtZW50
IHNwYXJzZW1lbSIpClNpZ25lZC1vZmYtYnk6IEdyZWVudGltZSBIdSA8Z3JlZW50aW1lLmh1QHNp
Zml2ZS5jb20+Ci0tLQogYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wZ3RhYmxlLmggfCAyNCArKysr
KysrKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAx
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BndGFi
bGUuaCBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGd0YWJsZS5oCmluZGV4IDgwOTA1YjI3ZWU5
OC4uNGY0MTYyZDkwNTg2IDEwMDY0NAotLS0gYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BndGFi
bGUuaAorKysgYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BndGFibGUuaApAQCAtODMsNiArODMs
MTggQEAgZXh0ZXJuIHBnZF90IHN3YXBwZXJfcGdfZGlyW107CiAjZGVmaW5lIF9fUzExMAlQQUdF
X1NIQVJFRF9FWEVDCiAjZGVmaW5lIF9fUzExMQlQQUdFX1NIQVJFRF9FWEVDCiAKKyNkZWZpbmUg
Vk1BTExPQ19TSVpFICAgICAoS0VSTl9WSVJUX1NJWkUgPj4gMSkKKyNkZWZpbmUgVk1BTExPQ19F
TkQgICAgICAoUEFHRV9PRkZTRVQgLSAxKQorI2RlZmluZSBWTUFMTE9DX1NUQVJUICAgIChQQUdF
X09GRlNFVCAtIFZNQUxMT0NfU0laRSkKKworI2RlZmluZSBGSVhBRERSX1RPUCAgICAgIFZNQUxM
T0NfU1RBUlQKKyNpZmRlZiBDT05GSUdfNjRCSVQKKyNkZWZpbmUgRklYQUREUl9TSVpFICAgICBQ
TURfU0laRQorI2Vsc2UKKyNkZWZpbmUgRklYQUREUl9TSVpFICAgICBQR0RJUl9TSVpFCisjZW5k
aWYKKyNkZWZpbmUgRklYQUREUl9TVEFSVCAgICAoRklYQUREUl9UT1AgLSBGSVhBRERSX1NJWkUp
CisKIC8qCiAgKiBSb3VnaGx5IHNpemUgdGhlIHZtZW1tYXAgc3BhY2UgdG8gYmUgbGFyZ2UgZW5v
dWdoIHRvIGZpdCBlbm91Z2gKICAqIHN0cnVjdCBwYWdlcyB0byBtYXAgaGFsZiB0aGUgdmlydHVh
bCBhZGRyZXNzIHNwYWNlLiBUaGVuCkBAIC00MjksMTggKzQ0MSw2IEBAIHN0YXRpYyBpbmxpbmUg
dm9pZCBwZ3RhYmxlX2NhY2hlX2luaXQodm9pZCkKIAkvKiBObyBwYWdlIHRhYmxlIGNhY2hlcyB0
byBpbml0aWFsaXplICovCiB9CiAKLSNkZWZpbmUgVk1BTExPQ19TSVpFICAgICAoS0VSTl9WSVJU
X1NJWkUgPj4gMSkKLSNkZWZpbmUgVk1BTExPQ19FTkQgICAgICAoUEFHRV9PRkZTRVQgLSAxKQot
I2RlZmluZSBWTUFMTE9DX1NUQVJUICAgIChQQUdFX09GRlNFVCAtIFZNQUxMT0NfU0laRSkKLQot
I2RlZmluZSBGSVhBRERSX1RPUCAgICAgIFZNQUxMT0NfU1RBUlQKLSNpZmRlZiBDT05GSUdfNjRC
SVQKLSNkZWZpbmUgRklYQUREUl9TSVpFICAgICBQTURfU0laRQotI2Vsc2UKLSNkZWZpbmUgRklY
QUREUl9TSVpFICAgICBQR0RJUl9TSVpFCi0jZW5kaWYKLSNkZWZpbmUgRklYQUREUl9TVEFSVCAg
ICAoRklYQUREUl9UT1AgLSBGSVhBRERSX1NJWkUpCi0KIC8qCiAgKiBUYXNrIHNpemUgaXMgMHg0
MDAwMDAwMDAwIGZvciBSVjY0IG9yIDB4OWZjMDAwMDAgZm9yIFJWMzIuCiAgKiBOb3RlIHRoYXQg
UEdESVJfU0laRSBtdXN0IGV2ZW5seSBkaXZpZGUgVEFTS19TSVpFLgotLSAKMi4xNy4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3Yg
bWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
